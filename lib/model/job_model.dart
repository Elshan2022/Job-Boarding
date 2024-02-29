import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
part 'job_model.g.dart';
part 'job_model.freezed.dart';

@freezed
class JobModel with _$JobModel {
  const factory JobModel({
    required String logo,
    required String field,
    required String company,
    required String postedDuration,
    required String location,
    required String experience,
    required String type,
    required String salary,
    required String description,
    required String id,
    required List<String> skills,
    required String role,
    @Default(false) bool isApplied,
    @Default(false) bool isDiscard,
  }) = _JobModel;

  factory JobModel.fromJson(Map<String, dynamic> json) =>
      _$JobModelFromJson(json);

  static List<JobModel> jobList = [
    JobModel(
      skills: [
        "Flutter",
        "Dart",
        "Firebase",
        "Google Map",
        "Rest Api",
        "Riverpod"
      ],
      id: const Uuid().v4(),
      role:
          "One simple, yet powerful idea is to reconsider your building blocks and design your organisational chart as a collection of job roles rather than job positions. This easy-to-implement change has a major impact on your organisation’s agility and adaptability. It also permits employees to personalise their job to match their individual strengths and motivation",
      logo:
          "https://blog.hubspot.com/hs-fs/hubfs/image8-2.jpg?width=600&name=image8-2.jpg",
      field: "Flutter developer",
      company: "Google",
      postedDuration: "3",
      location: "America",
      experience: "3",
      type: "Full time",
      salary: "15",
      description:
          "Kyla helps you live longer. First, Kyla collects your medical history, blood sample, and DNA. Then, Kyla AI analyzes your medical data to identify your top health risks, estimate your remaining lifetime, and give you simple, doctor-validated daily goals to increase your life expectancy. Finally, Kyla monitors your progress 27, diagnoses, and treats your conditions with the help of doctors.",
    ),
    JobModel(
      skills: [
        "Flutter",
        "Dart",
        "Firebase",
        "Google Map",
        "Rest Api",
        "Riverpod"
      ],
      role:
          "One simple, yet powerful idea is to reconsider your building blocks and design your organisational chart as a collection of job roles rather than job positions. This easy-to-implement change has a major impact on your organisation’s agility and adaptability. It also permits employees to personalise their job to match their individual strengths and motivation",
      id: const Uuid().v4(),
      logo:
          "https://yt3.googleusercontent.com/ytc/AIf8zZQKCG8w7wVznj9sHhrHge3cKYVuUblDUuOaUp_psQ=s900-c-k-c0x00ffffff-no-rj",
      field: "Java developer",
      company: "Netflix",
      postedDuration: "10",
      location: "America",
      experience: "2",
      type: "Part time",
      salary: "20",
      description:
          "Launched on January 16, 2007, nearly a decade after Netflix, Inc. began its pioneering DVD‑by‑mail movie rental service, Netflix is the most-subscribed video on demand streaming media service, with 238.39 million paid memberships in more than 190 countries.[7] By 2022, Netflix Original productions accounted for half of its library in the United States and the namesake company had ventured into other categories, such as video game publishing of mobile games via its flagship service. As of October 2023, Netflix is the 24th most-visited website in the world with 23.66% of its traffic coming from the United States, followed by the United Kingdom at 5.84% and Brazil at 5.64%",
    ),
    JobModel(
      skills: [
        "Flutter",
        "Dart",
        "Firebase",
        "Google Map",
        "Rest Api",
        "Riverpod"
      ],
      role:
          "One simple, yet powerful idea is to reconsider your building blocks and design your organisational chart as a collection of job roles rather than job positions. This easy-to-implement change has a major impact on your organisation’s agility and adaptability. It also permits employees to personalise their job to match their individual strengths and motivation",
      id: const Uuid().v4(),
      logo:
          "https://pbs.twimg.com/profile_images/1717013664954499072/2dcJ0Unw_400x400.png",
      field: "IOS developer",
      company: "Apple",
      postedDuration: "7",
      location: "UK",
      experience: "3",
      type: "Full time",
      salary: "70",
      description:
          "Apple was founded as Apple Computer Company on April 1, 1976 , by Steve Wozniak , and  to develop and sell Wozniak's Apple I personal computer. It was incorporated by Jobs and Wozniak in 1977. The company's second computer, the Apple II, became a best seller and one of the first mass-produced microcomputers. Apple went public in 1980 to instant financial success. The company developed computers featuring innovative graphical user interfaces, including the 1984 original Macintosh, announced that year in a critically acclaimed advertisement called",
    ),
    JobModel(
      skills: [
        "Flutter",
        "Dart",
        "Firebase",
        "Google Map",
        "Rest Api",
        "Riverpod"
      ],
      role:
          "One simple, yet powerful idea is to reconsider your building blocks and design your organisational chart as a collection of job roles rather than job positions. This easy-to-implement change has a major impact on your organisation’s agility and adaptability. It also permits employees to personalise their job to match their individual strengths and motivation",
      id: const Uuid().v4(),
      logo:
          "https://cdn.sanity.io/images/599r6htc/localized/a1f3e95a4f9fc7b6ae619e93eeb4ccae3f3ff418-1560x1560.png",
      field: "UI/UX designer",
      company: "Meta",
      postedDuration: "5",
      location: "America",
      experience: "6",
      type: "Full time",
      salary: "15",
      description:
          "Dylan Field and Evan Wallace began working on Figma in 2012 while studying computer science at Brown University. Wallace studied graphics and was a Teaching Assistant for the Computer Science Department, while Field chaired the CS Departmental Undergraduate Group.[2][3] The original objective behind Figma was to enable anyone [to] be creative by creating free, simple, creative tools in a browser. Field and Wallace experimented with different ideas, including software for drones and a meme generator, before settling on web-based graphics editor software. The company's early scope was described in a 2012 article by The Brown Daily Herald vaguely as a technology startup that will allow users to creatively express themselves online. That article reported that the company's first ideas revolved around 3D content generation, and subsequent ideas focused on photo editing and object segmentation",
    ),
  ];
}
