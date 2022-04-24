import 'package:flutter/cupertino.dart';
import 'package:restaurant/component/card_video.dart';
import 'package:restaurant/controller/video.dart';

class BodyVideo extends StatelessWidget {
  const BodyVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerVideo.dataLength,
      itemBuilder: (context, index) {
        return CardVideo(data: ControllerVideo.getVideo(index));
      },
    );
  }
}
