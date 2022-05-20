
List<ChartSampleData>? chartData;
List<ChartData>? stackedBar;
List<TimeChartData>? timeChartData;

class SalesData {
  SalesData(this.region, this.sales);

  final String region;
  final double sales;
}


class ChartData {
  ChartData({required this.x,required this.y1,required this.y2});

  final String x;
  final int y1;
  final double y2;
}

class ChartSampleData {
  ChartSampleData({
    required this.x,
    required this.y,
    this.secondSeriesYValue,
    this.thirdSeriesYValue,
  });

  final String x;
  final int y;
  final int? secondSeriesYValue;
  final int? thirdSeriesYValue;
}


class TimeChartData {
  TimeChartData({required this.x,required this.yValue});

  final dynamic x;
  final double yValue;
}