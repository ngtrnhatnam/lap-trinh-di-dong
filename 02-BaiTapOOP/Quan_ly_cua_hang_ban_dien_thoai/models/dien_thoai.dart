class DienThoai {
  String _maDienThoai;
  String  _tenDienThoai;
  String  _hangSanXuat;
  double _giaNhap;
  double _giaBan;
  bool _trangThai;

  // Constructor
  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangSanXuat, this._giaNhap, this._giaBan, this._trangThai);

  // Getters
  String get maDienThoai => _maDienThoai;
  String get tenDienThoai => _tenDienThoai;
  String get hangSanXuat => _hangSanXuat;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  bool get trangThai => _trangThai;

  // Setter
  set maDienThoai(String maDienThoai) {
    if (maDienThoai.isNotEmpty) {
      _maDienThoai = maDienThoai;
    }
  }
}