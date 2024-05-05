class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/project1.jpg',
    title: 'Infested',
    subtitle: 'An AI based FPS Shooter Game build on Unreal Engine.',
    webLink:
        'https://drive.google.com/drive/folders/1ehjF78IXqQbwqRnIbRtVCFHfex-G8-ph?usp=sharing',
  ),
  ProjectUtils(
    image: 'assets/projects/project2.png',
    title: 'Suraksha Sathi',
    subtitle:
        'This is an SOS application which helps users in distress with realtime location tracking as well as local authority support',
    androidLink: 'https://github.com/kartikbende/Suraksha_Sathi',
  ),
  ProjectUtils(
    image: 'assets/projects/project3.png',
    title: 'Music Genre Detection',
    subtitle: 'Music Genre Detection using Python',
    webLink: 'https://github.com/kartikbende/musicgenredetection',
  ),
];
