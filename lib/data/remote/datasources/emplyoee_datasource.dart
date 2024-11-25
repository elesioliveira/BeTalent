import 'package:be_talent/core/shared/result.dart';

abstract class EmployeeRepository {
  Future<Result> getEmployeesData();
}
