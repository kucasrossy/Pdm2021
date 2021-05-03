class SlideModel {
  final String imageUrl;
  final String title;
  final String description;

  SlideModel({this.imageUrl, this.title, this.description});
}

final slideModeList = [
  SlideModel(
      imageUrl: 'assets/images/image1.jpg',
      title: 'A Cool Way to Get Start',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.'),
  SlideModel(
    imageUrl: 'assets/images/image2.jpg',
    title: 'Design Interactive App UI',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
  SlideModel(
      imageUrl: 'assets/images/image3.jpg',
      title: 'It\'s Just the Beginning',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.')
];
