import 'package:charts/binding/controller_constant.dart';
import 'package:charts/home_scrren/prresentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../domain/model/chart_model.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                                     Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Center(
          child: SfCircularChart(
            // Chart title
            title: ChartTitle(
                text: 'Pie Chart \nSales on region'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: homeController.tooltipBehavior,
            series: <PieSeries<SalesData, String>>[
              PieSeries<SalesData, String>(
                dataSource: <SalesData>[
                  SalesData('West',  double.parse(homeController.westSales.toStringAsFixed(2))),
                  SalesData('East',  double.parse(homeController.eastSales.toStringAsFixed(2))),
                  SalesData('North', double.parse(homeController.northSales.toStringAsFixed(2))),
                  SalesData('South', double.parse(homeController.southSales.toStringAsFixed(2))),
                ],
                xValueMapper: (SalesData sales, _) => sales.region,
                yValueMapper: (SalesData sales, _) => sales.sales, // Enable data label
                dataLabelSettings:
                const DataLabelSettings(
                    isVisible: true),
              )
            ],
          ),
        ),
      ),
    )
    ;
  }
}
