import 'package:flutter_trip/model/common_model.dart';

class GridNavModel {
  final GridNavItemModel hotel;
  final GridNavItemModel flight;
  final GridNavItemModel travel;

  GridNavModel({
    this.hotel,
    this.flight,
    this.travel,
  });

  factory GridNavModel.fromJson(Map<String, dynamic> _json) {
    return _json != null
        ? GridNavModel(
            hotel: GridNavItemModel.fromJson(_json['hotel']),
            flight: GridNavItemModel.fromJson(_json['flight']),
            travel: GridNavItemModel.fromJson(_json['travel']),
          )
        : null;
  }
}

class GridNavItemModel {
  final String startColor;
  final String endColor;
  final CommonModel mainItem;
  final CommonModel item1;
  final CommonModel item2;
  final CommonModel item3;
  final CommonModel item4;

  GridNavItemModel({
    this.startColor,
    this.endColor,
    this.mainItem,
    this.item1,
    this.item2,
    this.item3,
    this.item4,
  });

  factory GridNavItemModel.fromJson(Map<String, dynamic> _json) {
    return GridNavItemModel(
      startColor: _json['startColor'],
      endColor: _json['endColor'],
      mainItem: CommonModel.fromJson(_json['mainItem']),
      item1: CommonModel.fromJson(_json['item1']),
      item2: CommonModel.fromJson(_json['item2']),
      item3: CommonModel.fromJson(_json['item3']),
      item4: CommonModel.fromJson(_json['item4']),
    );
  }
}
