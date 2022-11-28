library thefunc_flutter;

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

  bool keBoolean(dynamic val) {
    if (val == 1 ||
        val == '1' ||
        val == true ||
        val.toString().toLowerCase() == 'true') {
      return true;
    } else if (val == 0 ||
        val == '0' ||
        val == false ||
        val.toString().toLowerCase() == 'false') {
      return false;
    } else {
      return false;
    }
  }

  dynamic changeAs(dynamic varType, dynamic value) {
    Type tipenya = varType;
    dynamic hasil;
    if (tipenya == int) {
      if (isNumeric(value.toString())) {
        hasil = int.parse(value);
      } else {
        hasil = 0;
      }
    } else if (tipenya == bool) {
      hasil = keBoolean(value);
    } else if (tipenya == String) {
      hasil = value.toString();
    } else {
      hasil = value;
    }
    return hasil;
  }
}
