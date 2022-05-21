import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../binding/controller_constant.dart';
import '../../domain/model/chart_model.dart';
import '../home_screen.dart';

class BarChart extends StatelessWidget {
  const BarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: Center(
          child: SfCartesianChart(
            enableSideBySideSeriesPlacement: false,

            primaryXAxis: CategoryAxis(),

            primaryYAxis: NumericAxis(
              majorGridLines: const MajorGridLines(
                width: 1,
                color: Colors.red,
                dashArray: <double>[5, 5],
              ),
              minorGridLines: const MinorGridLines(
                width: 1,
                color: Colors.green,
                dashArray: <double>[5, 5],
              ),
              minorTicksPerInterval: 2,
            ),

            // Chart title
            title: ChartTitle(
                text:
                    'Bar Chart \nQuantity shipped base on ship date in 4 years'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: homeController.tooltipBehavior,
            // tooltipBehavior: TooltipBehavior(enable: true),

            series: <ColumnSeries<ChartSampleData, String>>[
              ColumnSeries<ChartSampleData, String>(
                dataSource: chartData!,
                xValueMapper: (ChartSampleData sales, _) => sales.x,
                yValueMapper: (ChartSampleData sales, _) => sales.y,
                name: 'Quantity',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
