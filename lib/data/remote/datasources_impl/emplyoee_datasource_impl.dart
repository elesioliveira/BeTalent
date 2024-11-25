import '../../../core/constants/app_urls.dart';
import '../../../core/models/employees_model.dart';
import '../../../core/shared/result.dart';
import '../../repositories/http_manager.dart';
import '../datasources/emplyoee_datasource.dart';

class EmplyoeeDatasourceImpl implements EmployeeRepository {
  final HttpManager _httpManager = HttpManager();

  @override
  Future<Result> getEmployeesData() async {
    try {
      final response = await _httpManager.restRequest(
        url: Endpoints.getEmployees,
        method: HttpMethods.geT,
      );

      if (response.statusCode != 200) {
        return Result(sucess: null, error: response.statusMessage);
      }

      final result = response.data as List<dynamic>;
      final employees = result
          .map((item) => EmployeeModel.fromJson(item as Map<String, dynamic>))
          .toList();
      return Result(error: null, sucess: employees);
    } catch (error) {
      return Result(error: error, sucess: null);
    }
  }
}
