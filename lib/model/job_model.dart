class JobModel {
  final String jobLogo;
  final String jobTitle;
  final String jobSubtitle;
  final String postedDuration;
  final String jobLocation;
  final String experience;
  final String jobTime;
  final String salary;
  final String description;
  JobModel({
    required this.jobLogo,
    required this.jobTitle,
    required this.jobSubtitle,
    required this.postedDuration,
    required this.jobLocation,
    required this.experience,
    required this.jobTime,
    required this.salary,
    required this.description,
  });

  static List<JobModel> jobList = List.generate(
    10,
    (index) => JobModel(
      jobLogo:
          "https://blog.hubspot.com/hs-fs/hubfs/image8-2.jpg?width=600&name=image8-2.jpg",
      jobTitle: "Flutter developer",
      jobSubtitle: "Google",
      postedDuration: "3",
      jobLocation: "America",
      experience: "3",
      jobTime: "Full time",
      salary: "15",
      description:
          "Kyla helps you live longer. First, Kyla collects your medical history, blood sample, and DNA. Then, Kyla AI analyzes your medical data to identify your top health risks, estimate your remaining lifetime, and give you simple, doctor-validated daily goals to increase your life expectancy. Finally, Kyla monitors your progress 27, diagnoses, and treats your conditions with the help of doctors.",
    ),
  );
}
