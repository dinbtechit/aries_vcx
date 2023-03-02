use heck::ToPascalCase;
use lib_flutter_rust_bridge_codegen::{
    config_parse, frb_codegen, get_symbols_if_no_duplicates, RawOpts,
};

// const RUST_INPUT: &str = "src/api.rs";
// const DART_OUTPUT: &str = "../lib/src/bridge_generated.dart";
// const RUST_OUTPUT: &str = "src/bridge_generated.rs";
// const CLASS_NAME: &str = "AriesVcx";
// const IOS_C_OUTPUT: &str = "../../flutter_aries_vcx/ios/Classes/frb.h";
// const MACOS_C_OUTPUT: &str = "../../flutter_aries_vcx/macos/Classes/frb.h";


const TEMPLATE_RUST_INPUT: &str = "src/$$TEMPLATE$$.rs";
const TEMPLATE_DART_OUTPUT: &str = "../lib/src/_generated/$$TEMPLATE$$_generated.dart";
const TEMPLATE_RUST_OUTPUT: &str = "src/$$TEMPLATE$$_generated.rs";
const TEMPLATE_CLASS_NAME: &str = "$$TEMPLATE$$";
const TEMPLATE_IOS_C_OUTPUT: &str = "../../flutter_aries_vcx/ios/Classes/$$TEMPLATE$$.h";
const TEMPLATE_MACOS_C_OUTPUT: &str = "../../flutter_aries_vcx/macos/Classes/$$TEMPLATE$$.h";


fn main() {
    let list_of_files: Vec<&str> = vec!["agency_client",
                                        "agent",
                                        "connection",
                                        "credential_definition",
                                        "disclosed_proof",
                                        "issuer_credential",
                                        "ledger",
                                        "logging",
                                        "mediator_connection",
                                        "out_of_band_receiver",
                                        "out_of_band_sender",
                                        "pool",
                                        "proof",
                                        "revocation_registry",
                                        "schema",
                                        "testing",
                                        "trustping",
                                        "utils",
                                        "wallet",
    ];

    let mut rust_inputs_files: Vec<String> = vec![];
    let mut dart_output_files: Vec<String> = vec![];
    let mut rust_output_files: Vec<String> = vec![];
    let mut class_names: Vec<String> = vec![];
    let mut ios_c_output_files: Vec<String> = vec![];
    let mut macos_c_files: Vec<String> = vec![];

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

        rust_inputs_files.push(rust_input);
        dart_output_files.push(dart_output);
        rust_output_files.push(rust_output);
        class_names.push(class_name);
        ios_c_output_files.push(ios_c_output);
        macos_c_files.push(macos_c_output);
    }

    // Options for frb_codegen
    let raw_opts = RawOpts {
        rust_input: rust_inputs_files,
        dart_output: dart_output_files,
        c_output: Some(ios_c_output_files.clone()),
        rust_output: Some(rust_output_files),
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
    for (index, ios) in ios_c_output_files.iter().enumerate() {
        let macos: String = macos_c_files[index].to_string();
        std::fs::copy(ios, macos).unwrap();
    }

    // Format the generated Dart code
    let _ = std::process::Command::new("flutter")
        .arg("format")
        .arg("..")
        .spawn();
}
