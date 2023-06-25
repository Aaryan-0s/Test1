// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_and_api_for_class/config/constants/hive_table_constant.dart';
// import 'package:hive_and_api_for_class/features/auth/domain/entity/student_entity.dart';
// import 'package:hive_and_api_for_class/features/batch/data/model/batch_hive_model.dart';
// import 'package:hive_and_api_for_class/features/course/data/model/course_hive_model.dart';

// part 'auth_hive_model.g.dart';

// final authHiveModelProvider = Provider(
//   (ref) => AuthHiveModel.empty(),
// );

// @HiveType(typeId: HiveTableConstant.studentTableId)
// class AuthHiveModel {
//   @HiveField(1)
//   final String fname;

//   @HiveField(2)
//   final String lname;

//   @HiveField(6)
//   final String username;

//   @HiveField(7)
//   final String password;

//   // Constructor
//   AuthHiveModel({
//     String? userId,
//     required this.fname,
//     required this.lname,
//     required this.username,
//     required this.password,
//   });

//   // empty constructor
//   AuthHiveModel.empty()
//       : this(
//           fname: '',
//           lname: '',
//           username: '',
//           password: '',
//         );

//   // Convert Hive Object to Entity
//   StudentEntity toEntity() => StudentEntity(
//         fname: fname,
//         lname: lname,
//         username: username,
//         password: password,
//       );

//   // Convert Entity to Hive Object
//   AuthHiveModel toHiveModel(StudentEntity entity) => AuthHiveModel(
//         fname: entity.fname,
//         lname: entity.lname,
        
//         batch: BatchHiveModel.empty().toHiveModel(entity.batch!),
//         courses: CourseHiveModel.empty().toHiveModelList(entity.courses),
//         username: entity.username,
//         password: entity.password,
//       );

//   // Convert Entity List to Hive List
//   List<AuthHiveModel> toHiveModelList(List<StudentEntity> entities) =>
//       entities.map((entity) => toHiveModel(entity)).toList();

//   @override
//   String toString() {
//     return ' fname: $fname, lname: $lname, phone: $phone, batch: $batch, courses: $courses, username: $username, password: $password';
//   }
// }
