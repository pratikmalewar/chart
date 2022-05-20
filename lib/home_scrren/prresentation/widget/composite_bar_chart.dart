import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../domain/model/chart_model.dart';

class CompositeBarChart extends StatelessWidget {
  const CompositeBarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,

        child: Center(
          child: Center(
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(text: 'Composite Bar Chart \nProfit and sales base on ship date in 4 years'),
                  // Enable legend
                  legend: Legend(isVisible: true),
                  enableSideBySideSeriesPlacement: false,
                  series: <ChartSeries>[

                    ColumnSeries<ChartData, String>(
                        dataSource: stackedBar!,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => int.parse(data.y2.toStringAsFixed(0)),
                        name: 'Sales'

                    ),

                    ColumnSeries<ChartData, String>(
                        dataSource: stackedBar!,

                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y1,
                      name: 'Profit',

                    ),



                  ]
              )
          ),
        ),
      ),
    );
  }
}
