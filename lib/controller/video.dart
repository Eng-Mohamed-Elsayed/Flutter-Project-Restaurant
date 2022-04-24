import 'dart:collection';

import 'package:restaurant/model/m_video.dart';

class ControllerVideo {
  static final List<ModelVideo> _dataVideo = [
    ModelVideo(
      title: 'BreakFast',
      imageUrl:
          'https://s3.amazonaws.com/ellevate-app-uploads-production/events/5907/event_image/large/111922188.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=EDnZj1cBWKU',
    ),
    ModelVideo(
      title: 'Lunch',
      imageUrl:
          'https://static.toiimg.com/thumb/msid-66476758,width-800,height-600,resizemode-75,imgsize-1640939,pt-32,y_pad-40/66476758.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=6o0oTQpI6RM',
    ),
    ModelVideo(
      title: 'Dinner',
      imageUrl:
          'https://image.shutterstock.com/image-photo/people-have-elegant-dinner-260nw-1103181095.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=b3oZNi1Rphg',
    ),
    ModelVideo(
      title: 'Dessert',
      imageUrl:
          'https://images.squarespace-cdn.com/content/v1/5dd5b5e9f226644911c4d733/1582303096724-NLWKXFDSN6B9FOFMTKLN/tiramisu-2897900_1280.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=Svm3M2uSreY',
    )
  ];
  static UnmodifiableListView<ModelVideo> get _dataList =>
      UnmodifiableListView(_dataVideo);

  static int get dataLength => _dataList.length;

  static ModelVideo getVideo(int index) => _dataList.elementAt(index);
}
