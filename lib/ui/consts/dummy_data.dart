import 'package:flutter_podcast_app/models/podcast.dart';
import 'package:flutter_podcast_app/ui/consts/app_images.dart';

class DummyData {
  static const List<String> interestName = [
    'News',
    'Entertainment',
    'Music',
    'Art',
    'Comedy',
    'Education',
    'Culture',
    'Politics',
    'Personal Journalists',
    'Government',
    'Health',
    'Business',
    'War',
    'Sprituality',
    'Creative',
    'IT',
    'Social Media',
    'Current Affairs',
  ];

  /// I am making this api for testing Audio in flutter and
  static List<Podcast> allPodcast = [
    Podcast(
      title: 'Do Podcast like pro',
      coverPicture: AppImages.podcastImages[0],
      audioLink:
          'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_5MG.mp3',
      isLocal: false,
      author: 'Momin',
    ),
    Podcast(
      title: 'Do Podcast like pro',
      coverPicture: AppImages.podcastImages[1],
      audioLink: 'assets/audio/file_example.mp3',
      isLocal: true,
      author: 'John',
    ),
  ];
}
