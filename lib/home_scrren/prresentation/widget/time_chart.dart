import 'package:charts/home_scrren/domain/model/chart_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TimeChart extends StatelessWidget {
  const TimeChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Card(
        elevation: 5,
        child: Center(
          child: SfCartesianChart(
            plotAreaBorderWidth: 0,
            title: ChartTitle(
                text: 'Time Chart \n4 Year Profit base on ship date'),
            primaryXAxis:
                DateTimeAxis(majorGridLines: const MajorGridLines(width: 0)),
            primaryYAxis: NumericAxis(
              // minimum: 1,
              // maximum: 1.35,
              // interval: 0.05,
              // labelFormat: r'{value}',
              title: AxisTitle(text: 'Sales'),
              // axisLine: const AxisLine(width: 0),
              // majorTickLines: const MajorTickLines(size: 0),
            ),
            series: _getDefaultDateTimeSeries(),
            // trackballBehavior: _trackballBehavior,
          ),
        ),
      ),
    );
  }
}

/// Returns the line chart with default data time axis.
List<LineSeries<TimeChartData, DateTime>> _getDefaultDateTimeSeries() {
  return <LineSeries<TimeChartData, DateTime>>[
    LineSeries<TimeChartData, DateTime>(
        dataSource: timeChartData!,
        xValueMapper: (TimeChartData data, _) => data.x as DateTime,
        yValueMapper: (TimeChartData data, _) => data.yValue,
        color: const Color.fromRGBO(242, 117, 7, 1),
        name: 'hj')
  ];
}
