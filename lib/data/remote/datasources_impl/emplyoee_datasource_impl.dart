import 'package:dartz/dartz.dart';
import 'package:be_talent/core/exceptions/failures.dart';
import 'package:be_talent/core/models/employees_model.dart';
import 'package:be_talent/data/repositories/http_manager.dart';

import '../../../core/constants/app_urls.dart';
import '../datasources/emplyoee_datasource.dart';

class EmplyoeeDatasourceImpl implements EmployeeRepository {
  final HttpManager _httpManager = HttpManager();

  @override
  Future<Either<Failure, List<EmployeeModel>>> getEmployeesData() async {
    try {
      final response = await _httpManager.restRequest(
        url: Endpoints.getEmployees,
        method: HttpMethods.geT,
      );
      if (response.statusCode != 200) {
        return Left(ServerFailure());
      }
      final result = response.data as List<dynamic>;
      final employees = result
          .map((item) => EmployeeModel.fromJson(item as Map<String, dynamic>))
          .toList();
      return Right(employees);
    } catch (error) {
      return Left(ServerFailure());
    }
  }
}
