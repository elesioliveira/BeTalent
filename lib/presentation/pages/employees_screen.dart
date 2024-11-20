import 'package:be_talent/core/utils/app_gaps.dart';
import 'package:be_talent/core/utils/app_typography.dart';
import 'package:be_talent/presentation/widget/app_notification_widget.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';
import '../controllers/employee_controller.dart';
import '../widget/app_circular_shape_widget.dart';
import '../widget/app_data_table_employees.dart';
import '../widget/app_header.dart';
import '../widget/app_text_from_field_widget.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen({super.key});

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  @override
  void initState() {
    super.initState();
    fetchEmployees();
  }

  void searchEmployee(String value) {
    setState(() {
      filterEmployess(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          toolbarHeight: 100,
          leading: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: AppCircularShape(data: 'CG')),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 15),
                child: AppNotificationWidget(data: '02')),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppGaps.appGapV08,
              Text(
                'Funcionários',
                style: heading1(),
              ),
              AppGaps.appGapV08,
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Column(
                  children: [
                    //input search
                    AppTextFromFieldWidget(
                      onChanged: (String? value) {
                        searchEmployee(value!);
                      },
                    ),
                    AppGaps.appGapV20,
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AppGaps.appGapV16,
                          //cabeçario
                          const AppHeader(),
                          AppGaps.appGapV04,
                          const Divider(
                            thickness: 1,
                            height: 1,
                          ),
                          //Data
                          AnimatedBuilder(
                            animation: isLoadingEmployee,
                            builder: (context, child) {
                              if (isLoadingEmployee.value) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                return const AppDataTableEmployees();
                              }
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
