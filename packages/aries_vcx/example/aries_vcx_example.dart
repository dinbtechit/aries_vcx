import 'package:aries_vcx/aries_vcx.dart';

void main() {
  var awesome = AgencyClient();
  print('awesome: ${awesome.updateWebhookUrl(webhookUrl: '')}');
}
