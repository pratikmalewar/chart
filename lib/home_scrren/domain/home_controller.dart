import 'dart:convert';
import 'dart:developer';

import 'package:charts/home_scrren/data/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'model/chart_model.dart';
import 'model/chart_server_response_model.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  TooltipBehavior? tooltipBehavior;

  @override
  void onInit() {
    // TODO: implement onInit
    tooltipBehavior = TooltipBehavior(enable: true);

    super.onInit();
  }

  var isLoading = false.obs;

  List<ChartResponseModel>? _chartList;

  List<ChartResponseModel>? get chartList => _chartList;

  Map<String, double>? jsonData;

  double westSales = 0.0;
  double eastSales = 0.0;
  double northSales = 0.0;
  double southSales = 0.0;

  int quantity2014 = 0;
  int quantity2015 = 0;
  int quantity2016 = 0;
  int quantity2017 = 0;

  double sales2014 = 0.0;
  double sales2015 = 0.0;
  double sales2016 = 0.0;
  double sales2017 = 0.0;

  double profit2014 = 0.0;
  double profit2015 = 0.0;
  double profit2016 = 0.0;
  double profit2017 = 0.0;

  fetchCharsList() async {
    isLoading(true);

    await HomeServices.fetchChart().then((res) async {
      log(res.statusCode.toString());

      switch (res.statusCode) {
        case 200:
          var apiResponse = jsonDecode(res.body);

          _chartList = [];
          apiResponse.forEach((category) {
            ChartResponseModel chartModel = ChartResponseModel.fromJson(category);
            debugPrint("${1 + 1}");

            _chartList!.add(chartModel);
            loadData(chartModel);
          }

          );
          timeChartData = <TimeChartData>[
            TimeChartData(x: DateTime(2014), yValue: profit2014 ),
            // TimeChartData(x: DateTime(2014, 2), yValue: 1.07),
            // TimeChartData(x: DateTime(2014, 3), yValue: 1.09),
            // TimeChartData(x: DateTime(2014, 4), yValue: 1.12),
            // TimeChartData(x: DateTime(2014, 5), yValue: 1.14),
            // TimeChartData(x: DateTime(2014, 6), yValue: 1.17),
            // TimeChartData(x: DateTime(2014, 7), yValue: 1.18),
            // TimeChartData(x: DateTime(2014, 8), yValue: 1.18),
            // TimeChartData(x: DateTime(2014, 9), yValue: 1.1),
            // TimeChartData(x: DateTime(2014, 10), yValue: 1.13),
            // TimeChartData(x: DateTime(2014, 11), yValue: 1.24),
            // TimeChartData(x: DateTime(2014, 12), yValue: 1.24),
            TimeChartData(x: DateTime(2015), yValue: profit2015),
            // TimeChartData(x: DateTime(2015, 2), yValue: 1.12),
            // TimeChartData(x: DateTime(2015, 3), yValue: 1.08),
            // TimeChartData(x: DateTime(2015, 4), yValue: 1.12),
            // TimeChartData(x: DateTime(2015, 5), yValue: 1.1),
            // TimeChartData(x: DateTime(2015, 6), yValue: 1.12),
            // TimeChartData(x: DateTime(2015, 7), yValue: 1.1),
            // TimeChartData(x: DateTime(2015, 8), yValue: 1.12),
            // TimeChartData(x: DateTime(2015, 9), yValue: 1.12),
            // TimeChartData(x: DateTime(2015, 10), yValue: 1.1),
            // TimeChartData(x: DateTime(2015, 11), yValue: 1.06),
            // TimeChartData(x: DateTime(2015, 12), yValue: 1.09),
            TimeChartData(x: DateTime(2016), yValue:profit2016),
            // TimeChartData(x: DateTime(2016, 2), yValue: 1.09),
            // TimeChartData(x: DateTime(2016, 3), yValue: 1.14),
            // TimeChartData(x: DateTime(2016, 4), yValue: 1.14),
            // TimeChartData(x: DateTime(2016, 5), yValue: 1.12),
            // TimeChartData(x: DateTime(2016, 6), yValue: 1.11),
            // TimeChartData(x: DateTime(2016, 7), yValue: 1.11),
            // TimeChartData(x: DateTime(2016, 8), yValue: 1.11),
            // TimeChartData(x: DateTime(2016, 9), yValue: 1.12),
            // TimeChartData(x: DateTime(2016, 10), yValue: 1.1),
            // TimeChartData(x: DateTime(2016, 11), yValue: 1.08),
            // TimeChartData(x: DateTime(2016, 12), yValue: 1.05),
            TimeChartData(x: DateTime(2017), yValue:profit2017),
            //   TimeChartData(x: DateTime(2017, 2), yValue: 1.06),
            //   TimeChartData(x: DateTime(2017, 3), yValue: 1.07),
            //   TimeChartData(x: DateTime(2017, 4), yValue: 1.09),
            //   TimeChartData(x: DateTime(2017, 5), yValue: 1.12),
            //   TimeChartData(x: DateTime(2017, 6), yValue: 1.14),
            //   TimeChartData(x: DateTime(2017, 7), yValue: 1.17),
            //   TimeChartData(x: DateTime(2017, 8), yValue: 1.18),
            //   TimeChartData(x: DateTime(2017, 9), yValue: 1.18),
            //   TimeChartData(x: DateTime(2017, 10), yValue: 1.16),
            //   TimeChartData(x: DateTime(2017, 11), yValue: 1.18),
            //   TimeChartData(x: DateTime(2017, 12), yValue: 1.2),
          ];


          break;
        case 401:
          debugPrint('Failed');
          debugPrint(res.statusCode.toString());
          debugPrint(res.body);
          break;
        case 409:
          debugPrint('Failed');
          debugPrint(res.statusCode.toString());
          debugPrint(res.body);
          break;
        case 422:
          debugPrint('Failed');
          debugPrint(res.statusCode.toString());
          debugPrint(res.body);
          break;
        default:
          debugPrint('Failed');
          debugPrint(res.statusCode.toString());
          debugPrint(res.body);
      }
    }).catchError((e) => print(e));
    isLoading(false);
    debugPrint('loading end');
  }


  loadData(var chartModel){
    switch (chartModel.region) {
      case 'West':
        {
          westSales = westSales + double.parse(chartModel.sales.toString());
        }
        break;

      case 'East':
        {
          eastSales =
              eastSales + double.parse(chartModel.sales.toString());
        }
        break;

      case 'North':
        {
          northSales =
              northSales + double.parse(chartModel.sales.toString());
        }
        break;

      case 'South':
        {
          southSales =
              southSales + double.parse(chartModel.sales.toString());
        }
        break;

      default:
        {}
        break;
    }

    switch (changeInDateFormet(chartModel.shipDate).toString()) {
      case '2014':
        {
          quantity2014 = quantity2014 + int.parse(chartModel.quantity.toString());
          sales2014 = sales2014 + double.parse(chartModel.sales.toString());
          profit2014 = profit2014 + double.parse(chartModel.profit.toString());
        }
        break;

      case '2015':
        {
          quantity2015 = quantity2015 + int.parse(chartModel.quantity.toString());
          sales2015 = sales2015 + double.parse(chartModel.sales.toString());
          profit2015 = profit2015 + double.parse(chartModel.profit.toString());
        }
        break;

      case '2016':
        {
          quantity2016 = quantity2016 + int.parse(chartModel.quantity.toString());
          sales2016 = sales2016 + double.parse(chartModel.sales.toString());
          profit2016 = profit2016 + double.parse(chartModel.profit.toString());
        }
        break;

      case '2017':
        {
          quantity2017 = quantity2017 + int.parse(chartModel.quantity.toString());
          sales2017 = sales2017 + double.parse(chartModel.sales.toString());
          profit2017 = profit2017 + double.parse(chartModel.profit.toString());
        }
        break;

      default:
        {}
        break;
    }

    chartData = <ChartSampleData>[
      ChartSampleData(
        x: '2014',
        y: quantity2014,
        // secondSeriesYValue: 35079000,
        // thirdSeriesYValue: 39291000,
      ),
      ChartSampleData(
        x: '2015',
        y: quantity2015,
        // secondSeriesYValue: 82682000,
        // thirdSeriesYValue: 86861000,
      ),
      ChartSampleData(
        x: '2016',
        y: quantity2016,
        // secondSeriesYValue: 75315000,
        // thirdSeriesYValue: 81786000,
      ),
      ChartSampleData(
        x: '2017',
        y: quantity2017,
        // secondSeriesYValue: 76407000,
        // thirdSeriesYValue: 76941000,
      ),
    ];

    stackedBar = <ChartData>[
      ChartData(
        x: '2014',
        y1: int.parse(profit2014.toStringAsFixed(0)),
        y2: sales2014,
      ),
      ChartData(
        x: '2015',
        y1: int.parse(profit2015.toStringAsFixed(0)),
        y2: sales2015,
      ),
      ChartData(
        x: '2016',
        y1: int.parse(profit2016.toStringAsFixed(0)),
        y2: sales2016,
      ),
      ChartData(
        x: "2017",
        y1: int.parse(profit2017.toStringAsFixed(0)),
        y2: sales2017,
      ),
    ];


  }

  String changeInDateFormet(var getDate) {
    String date = getDate;
    DateTime parseDate = DateFormat("MM/dd/yyyy").parse(date);
    var inputDate = DateTime.parse(parseDate.toString());
    // var outputFormat = DateFormat('MM/dd/yyyy hh:mm a');
    // var outputFormat = DateFormat('hh:mm a');
    var outputFormat = DateFormat('yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }
}
