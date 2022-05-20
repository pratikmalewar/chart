import 'package:charts/home_scrren/prresentation/widget/bar_chart.dart';
import 'package:charts/home_scrren/prresentation/widget/composite_bar_chart.dart';
import 'package:charts/home_scrren/prresentation/widget/pie_chart_widget.dart';
import 'package:charts/home_scrren/prresentation/widget/time_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../binding/controller_constant.dart';
import '../domain/model/chart_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    homeController.fetchCharsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     homeController.fetchCharsList();
      //   },
      //   child: const Icon(Icons.add),
      // ),
      body: SafeArea(
        child: Obx(
          () {
            return homeController.isLoading.value == true
                ?  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        CupertinoActivityIndicator(),
                        Text("Please wait...")
                      ],
                    ),
                  )
                : Card(
                    elevation: 2,
                    child: homeController.chartList != null
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: const[
                                    // Text(homeController.chartList![0].state
                                    //     .toString()),
                                     PieChartWidget(),
                                     BarChart(),
                                     CompositeBarChart(),
                                     TimeChart(),
                                  ],
                                );
                              },
                            ),
                          )
                        : const SizedBox.shrink(),
                  );
          },
        ),
      ),
    );
  }
}

