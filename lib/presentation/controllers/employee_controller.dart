import 'dart:async';
import 'package:be_talent/core/models/employees_model.dart';
import 'package:flutter/material.dart';
import '../../data/remote/datasources_impl/emplyoee_datasource_impl.dart';

ValueNotifier<bool> isLoadingEmployee = ValueNotifier<bool>(false);
ValueNotifier<List<EmployeeModel>> listEmployees =
    ValueNotifier<List<EmployeeModel>>([]);
ValueNotifier<List<EmployeeModel>> listEmployeesFiltered =
    ValueNotifier<List<EmployeeModel>>([]);
Timer? _timer;

final EmplyoeeDatasourceImpl employeeDatasource = EmplyoeeDatasourceImpl();

void fetchEmployees() async {
  isLoadingEmployee.value = true;
  listEmployees.value.clear();
  final result = await employeeDatasource.getEmployeesData();
  result.fold(
    (failure) {
      print('Erro ao buscar dados: ${failure.runtimeType}');
    },
    (employees) {
      listEmployees.value = [...listEmployees.value, ...employees];
    },
  );

  isLoadingEmployee.value = false;
}

void filterEmployess(String data) {
  _timer?.cancel();
  _timer = Timer(const Duration(milliseconds: 500), () async {
    String dataLowerCase = data.toLowerCase();
    listEmployeesFiltered.value = listEmployees.value.where((element) {
      String lowerCaseName = element.name.toLowerCase();
      String lowerCaseJob = element.job.toLowerCase();
      return lowerCaseName.contains(dataLowerCase) ||
          lowerCaseJob.contains(dataLowerCase) ||
          element.phone.contains(dataLowerCase);
    }).toList();
    print(listEmployeesFiltered.value);
  });
}
