/// Order ID : "CA-2016-106621"
/// Profit : "1.1808"
/// City : "Yuma"
/// Customer Name : "Dario Medina"
/// Product Name : "Newell 351"
/// Row ID : "8088"
/// Country : "United States"
/// Discount : "0.2"
/// Customer ID : "DM-12955"
/// Region : "West"
/// Quantity : "4"
/// Segment : "Corporate"
/// State : "Arizona"
/// Ship Mode : "Second Class"
/// Sub-Category : "Art"
/// Postal Code : "85364"
/// Ship Date : "10/1/2016"
/// Category : "Office Supplies"
/// Product ID : "OFF-AR-10002375"
/// Sales : "10.496"
/// Order Date : "9/29/2016"

class ChartResponseModel {
  ChartResponseModel({
      String? orderID, 
      String? profit, 
      String? city, 
      String? customerName, 
      String? productName, 
      String? rowID, 
      String? country, 
      String? discount, 
      String? customerID, 
      String? region, 
      String? quantity, 
      String? segment, 
      String? state, 
      String? shipMode, 
      String? subCategory, 
      String? postalCode, 
      String? shipDate, 
      String? category, 
      String? productID, 
      String? sales, 
      String? orderDate,}){
    _orderID = orderID;
    _profit = profit;
    _city = city;
    _customerName = customerName;
    _productName = productName;
    _rowID = rowID;
    _country = country;
    _discount = discount;
    _customerID = customerID;
    _region = region;
    _quantity = quantity;
    _segment = segment;
    _state = state;
    _shipMode = shipMode;
    _subCategory = subCategory;
    _postalCode = postalCode;
    _shipDate = shipDate;
    _category = category;
    _productID = productID;
    _sales = sales;
    _orderDate = orderDate;
}

  ChartResponseModel.fromJson(dynamic json) {
    _orderID = json['Order ID'];
    _profit = json['Profit'];
    _city = json['City'];
    _customerName = json['Customer Name'];
    _productName = json['Product Name'];
    _rowID = json['Row ID'];
    _country = json['Country'];
    _discount = json['Discount'];
    _customerID = json['Customer ID'];
    _region = json['Region'];
    _quantity = json['Quantity'];
    _segment = json['Segment'];
    _state = json['State'];
    _shipMode = json['Ship Mode'];
    _subCategory = json['Sub-Category'];
    _postalCode = json['Postal Code'];
    _shipDate = json['Ship Date'];
    _category = json['Category'];
    _productID = json['Product ID'];
    _sales = json['Sales'];
    _orderDate = json['Order Date'];
  }
  String? _orderID;
  String? _profit;
  String? _city;
  String? _customerName;
  String? _productName;
  String? _rowID;
  String? _country;
  String? _discount;
  String? _customerID;
  String? _region;
  String? _quantity;
  String? _segment;
  String? _state;
  String? _shipMode;
  String? _subCategory;
  String? _postalCode;
  String? _shipDate;
  String? _category;
  String? _productID;
  String? _sales;
  String? _orderDate;

  String? get orderID => _orderID;
  String? get profit => _profit;
  String? get city => _city;
  String? get customerName => _customerName;
  String? get productName => _productName;
  String? get rowID => _rowID;
  String? get country => _country;
  String? get discount => _discount;
  String? get customerID => _customerID;
  String? get region => _region;
  String? get quantity => _quantity;
  String? get segment => _segment;
  String? get state => _state;
  String? get shipMode => _shipMode;
  String? get subCategory => _subCategory;
  String? get postalCode => _postalCode;
  String? get shipDate => _shipDate;
  String? get category => _category;
  String? get productID => _productID;
  String? get sales => _sales;
  String? get orderDate => _orderDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Order ID'] = _orderID;
    map['Profit'] = _profit;
    map['City'] = _city;
    map['Customer Name'] = _customerName;
    map['Product Name'] = _productName;
    map['Row ID'] = _rowID;
    map['Country'] = _country;
    map['Discount'] = _discount;
    map['Customer ID'] = _customerID;
    map['Region'] = _region;
    map['Quantity'] = _quantity;
    map['Segment'] = _segment;
    map['State'] = _state;
    map['Ship Mode'] = _shipMode;
    map['Sub-Category'] = _subCategory;
    map['Postal Code'] = _postalCode;
    map['Ship Date'] = _shipDate;
    map['Category'] = _category;
    map['Product ID'] = _productID;
    map['Sales'] = _sales;
    map['Order Date'] = _orderDate;
    return map;
  }

}