// job_model.dart

class JobModel {
  final String id;
  final String positionName;
  // final String location; // We'll add location to the AddJob screen later
  final String description;

  JobModel({
    required this.id,
    required this.positionName,
    // required this.location,
    required this.description,
  });

  // Factory method to create a JobModel from a Map (useful for fetching from APIs/DBs)
  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      id: json['id'],
      positionName: json['positionName'],
      // location: json['location'],
      description: json['description'],
    );
  }
}
