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
                ? Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Text(homeController.chartList![0].state
                                  //     .toString()),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: RaisedButton(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      elevation: 6,
                                      color: Colors.cyan,
                                      child: const Text(
                                        'Filter',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    ListTile(
                                                      title:
                                                          const Text('Segment'),
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                    ListTile(
                                                      title: const Text(
                                                          'Category'),
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                    ListTile(
                                                      title: const Text(
                                                          'Sub Category'),
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                    ),
                                  ),
                                  const PieChartWidget(),
                                  const BarChart(),
                                  const CompositeBarChart(),
                                  const TimeChart(),
                                ],
                              ),
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
