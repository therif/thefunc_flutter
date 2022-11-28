library thefunc_common;

class TheFunc {
  bool isNumeric(String s) {
    bool hasil = true;
    if (s == null) {
      return false;
    }
    var coba1 = double.tryParse(s);
    if (coba1 == null) {
      hasil = false;
    } else {
      var coba2 = int.tryParse(s);
      if (coba2 == null) {
        hasil = false;
      }
    }
    return hasil;
  }

  bool asBool(dynamic val) {
    if (val is String) {
      if (val == '1' || val.toString().toLowerCase() == 'true') {
        return true;
      } else if (val == '0' || val.toString().toLowerCase() == 'false') {
        return false;
      }
    } else if (val is bool) {
      return val;
    } else if (val is int || val is double) {
      if (val > 0) {
        return true;
      } else if (val < 1) {
        return false;
      }
    }
    return false;
  }

  int asInt(dynamic value) {
    if (value is String) {
      if (isNumeric(value.toString())) {
        return int.tryParse(value)!;
      } else {
        return 0;
      }
    } else if (value is double) {
      return value.toInt();
    } else if (value is bool) {
      return value == true ? 1 : 0;
    } else {
      return 0;
    }
  }

  double asDouble(value) {
    if (value is String) {
      if (isNumeric(value.toString())) {
        return double.tryParse(value)!;
      } else {
        return 0;
      }
    } else if (value is int) {
      return value.toDouble();
    } else if (value is double) {
      return value;
    } else if (value is bool) {
      return value == true ? 1 : 0;
    } else {
      return 0;
    }
  }

  dynamic change(Type toType, dynamic value) {
    //int asInt({value}) {
    if (toType == int || toType is int) {
      return asInt(value);
    }

    //String asString(value) {
    if (toType == String || toType is String) {
      return value.toString();
    }

    //bool asBool(value) {
    if (toType == bool || toType is bool) {
      return asBool(value);
    }

    //double? asDouble(value) {
    if (toType == double || toType is double) {
      return asDouble(value);
    }

    return null;
  }
}
