use heck::ToPascalCase;
use lib_flutter_rust_bridge_codegen::{
    config_parse, frb_codegen, get_symbols_if_no_duplicates, RawOpts,
};

const RUST_INPUT: &str = "src/api.rs";
const DART_OUTPUT: &str = "../lib/src/bridge_generated.dart";
const RUST_OUTPUT: &str = "src/bridge_generated.rs";
const CLASS_NAME: &str = "AriesVcx";
const IOS_C_OUTPUT: &str = "../../flutter_aries_vcx/ios/Classes/frb.h";
const MACOS_C_OUTPUT: &str = "../../flutter_aries_vcx/macos/Classes/frb.h";


const TEMPLATE_RUST_INPUT: &str = "src/$$TEMPLATE$$.rs";
const TEMPLATE_DART_OUTPUT: &str = "../lib/src/$$TEMPLATE$$_generated.dart";
const TEMPLATE_RUST_OUTPUT: &str = "src/$$TEMPLATE$$_generated.rs";
const TEMPLATE_CLASS_NAME: &str = "$$TEMPLATE$$FFI";
const TEMPLATE_IOS_C_OUTPUT: &str = "../../flutter_aries_vcx/ios/Classes/$$TEMPLATE$$.h";
const TEMPLATE_MACOS_C_OUTPUT: &str = "../../flutter_aries_vcx/macos/Classes/$$TEMPLATE$$.h";



fn main() {

    let list_of_files: Vec<&str> = vec!["agency_client",
                                        "agent",
                                        "credential_definition",
                                        "disclosed_proof",
                                        "issuer_credential",
                                        "ledger"];

    let mut list_of_rust_input_files: Vec<String> = Vec::new();
    let mut list_of_dart_output_files: Vec<String> = Vec::new();
    let mut list_of_rust_output_files: Vec<String> = Vec::new();
    let mut list_of_class_names: Vec<String> = Vec::new();
    let mut list_of_ios_c_names: Vec<String> = Vec::new();
    let mut list_of_macos_c_names: Vec<String> = Vec::new();

    for name in list_of_files.iter() {

        // Tell Cargo that if the input Rust code changes, rerun this build script
        // println!("cargo:rerun-if-changed={}", RUST_INPUT);
        println!("cargo:rerun-if-changed={}", name);

        let rust_input = str::replace(TEMPLATE_RUST_INPUT, "$$TEMPLATE$$", name);
        let dart_output = str::replace(TEMPLATE_DART_OUTPUT, "$$TEMPLATE$$", name);
        let rust_output = str::replace(TEMPLATE_RUST_OUTPUT, "$$TEMPLATE$$", name);
        let class_name = str::replace(TEMPLATE_CLASS_NAME, "$$TEMPLATE$$", &name.to_pascal_case());
        let ios_c_output = str::replace(TEMPLATE_IOS_C_OUTPUT, "$$TEMPLATE$$", name);
        let macos_c_output = str::replace(TEMPLATE_MACOS_C_OUTPUT, "$$TEMPLATE$$", name);

        list_of_rust_input_files.push(rust_input);
        list_of_dart_output_files.push(dart_output);
        list_of_rust_output_files.push(rust_output);
        list_of_class_names.push(class_name);
        list_of_ios_c_names.push(ios_c_output);
        list_of_macos_c_names.push(macos_c_output);
    }

    let mut rust_inputs = vec![RUST_INPUT.to_string()];
    rust_inputs.append(&mut list_of_rust_input_files);

    let mut dart_outputs = vec![DART_OUTPUT.to_string()];

    dart_outputs.append(&mut list_of_dart_output_files);

    let mut ios_c_outputs = vec![IOS_C_OUTPUT.to_string()];
    ios_c_outputs.append(&mut list_of_ios_c_names);

    let mut macos_c_outputs = vec![MACOS_C_OUTPUT.to_string()];
    macos_c_outputs.append(&mut list_of_macos_c_names);

    let mut rust_outputs = vec![RUST_OUTPUT.to_string()];
    rust_outputs.append(&mut list_of_rust_output_files);

    let mut class_names = vec![CLASS_NAME.to_string()];
    class_names.append(&mut list_of_class_names);



    // Options for frb_codegen
    let raw_opts = RawOpts {
        rust_input: rust_inputs,
        dart_output: dart_outputs,
        c_output: Some(ios_c_outputs.clone()),
        rust_output: Some(rust_outputs),
        class_name: Some(class_names),
        inline_rust: true,
        wasm: true,
        ..Default::default()
    };

    // Generate Rust & Dart ffi bridges
    let configs = config_parse(raw_opts);
    let all_symbols = get_symbols_if_no_duplicates(&configs).unwrap();
    for config in configs.iter() {
        frb_codegen(config, &all_symbols).unwrap();
    }

    // Copy ios/ generated C files to macos/
    for (index, macos) in macos_c_outputs.iter().enumerate() {
        let ios: String = ios_c_outputs[index].to_string();
        // print!("ios {:?} \n", ios);
        // print!("macos {:?} \n", macos);
        std::fs::copy(ios, macos).unwrap();
    }

    // Format the generated Dart code
    let _ = std::process::Command::new("flutter")
        .arg("format")
        .arg("..")
        .spawn();
}
