import 'package:audioplayers/audioplayers.dart';
import 'package:samskritam/common/utils/dialog/alert_dialog.dart';

void playSound({String? url, context}) async {
  final player = AudioPlayer();
  try {
    await player.play(UrlSource(url ??
        'gs://vaidushyam-samskritam.appspot.com/sounds/unit 1/dhanyawaad.mp3'));
  } catch (e) {
    print(url.toString());
    simpleAlertDialog(context, "Error!", e.toString());
  }
}
