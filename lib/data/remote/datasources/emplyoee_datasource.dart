import 'package:be_talent/core/models/employees_model.dart';
import 'package:dartz/dartz.dart';
import '../../../core/exceptions/failures.dart';

abstract class EmployeeRepository {
  Future<Either<Failure, List<EmployeeModel>>> getEmployeesData();
}
