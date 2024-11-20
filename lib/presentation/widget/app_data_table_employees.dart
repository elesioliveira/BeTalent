import 'package:be_talent/domain/usecases/app_formatted_value.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_gaps.dart';
import '../../core/utils/app_typography.dart';
import '../../domain/usecases/get_image_person_employee.dart';
import '../controllers/employee_controller.dart';

class AppDataTableEmployees extends StatefulWidget {
  const AppDataTableEmployees({super.key});

  @override
  State<AppDataTableEmployees> createState() => _AppDataTableEmployeesState();
}

class _AppDataTableEmployeesState extends State<AppDataTableEmployees> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: listEmployees,
      builder: (context, child) {
        if (listEmployees.value.isEmpty) {
          return const Center(
            child: Text('Nenhum funcionário cadastrado'),
          );
        } else {
          return AnimatedBuilder(
              animation: listEmployeesFiltered,
              builder: (context, child) {
                if (listEmployeesFiltered.value.isNotEmpty) {
                  return SizedBox(
                    width: double.maxFinite,
                    height: 500,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        String imagePerson = getImagePerson(
                            listEmployeesFiltered.value[index].name);
                        final admissionDateFormatted = formatDate(
                            listEmployeesFiltered.value[index].admissionDate);
                        final phoneNumberFormatted = formatPhoneNumber(
                            listEmployeesFiltered.value[index].phone);
                        return Column(
                          children: [
                            ExpansionTile(
                              title: Text(
                                listEmployeesFiltered.value[index].name,
                                overflow: TextOverflow.ellipsis,
                              ),
                              leading: CircleAvatar(
                                backgroundImage: ExactAssetImage(imagePerson),
                              ),
                              trailing: Icon(
                                Icons.expand_more,
                                color: AppColors.bluePrimary,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10, top: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cargo',
                                            style: heading2(),
                                          ),
                                          AppGaps.appGapV08,
                                          Text(
                                            'Data de admissão',
                                            style: heading2(),
                                          ),
                                          AppGaps.appGapV08,
                                          Text(
                                            'Telefone',
                                            style: heading2(),
                                          ),
                                          AppGaps.appGapV08,
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            listEmployeesFiltered
                                                .value[index].job,
                                            style: heading2(
                                                fontWeight: FontWeight.w400),
                                          ),
                                          AppGaps.appGapV08,
                                          Text(
                                            admissionDateFormatted,
                                            style: heading2(
                                                fontWeight: FontWeight.w400),
                                          ),
                                          AppGaps.appGapV08,
                                          Text(
                                            phoneNumberFormatted,
                                            style: heading2(
                                                fontWeight: FontWeight.w400),
                                          ),
                                          AppGaps.appGapV08,
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              height: 1,
                            )
                          ],
                        );
                      },
                      itemCount: listEmployeesFiltered.value.length,
                    ),
                  );
                } else {
                  return SizedBox(
                    width: double.maxFinite,
                    height: 500,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        String imagePerson =
                            getImagePerson(listEmployees.value[index].name);
                        final admissionDateFormatted = formatDate(
                            listEmployees.value[index].admissionDate);
                        final phoneNumberFormatted =
                            formatPhoneNumber(listEmployees.value[index].phone);
                        return Column(
                          children: [
                            ExpansionTile(
                              title: Text(
                                listEmployees.value[index].name,
                                overflow: TextOverflow.ellipsis,
                              ),
                              leading: CircleAvatar(
                                backgroundImage: ExactAssetImage(imagePerson),
                              ),
                              trailing: Icon(
                                Icons.expand_more,
                                color: AppColors.bluePrimary,
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 10, top: 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cargo',
                                            style: heading2(),
                                          ),
                                          AppGaps.appGapV08,
                                          Text(
                                            'Data de admissão',
                                            style: heading2(),
                                          ),
                                          AppGaps.appGapV08,
                                          Text(
                                            'Telefone',
                                            style: heading2(),
                                          ),
                                          AppGaps.appGapV08,
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            listEmployees.value[index].job,
                                            style: heading2(
                                                fontWeight: FontWeight.w400),
                                          ),
                                          AppGaps.appGapV08,
                                          Text(
                                            admissionDateFormatted,
                                            style: heading2(
                                                fontWeight: FontWeight.w400),
                                          ),
                                          AppGaps.appGapV08,
                                          Text(
                                            phoneNumberFormatted,
                                            style: heading2(
                                                fontWeight: FontWeight.w400),
                                          ),
                                          AppGaps.appGapV08,
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              height: 1,
                            )
                          ],
                        );
                      },
                      itemCount: listEmployees.value.length,
                    ),
                  );
                }
              });
        }
      },
    );
  }
}
