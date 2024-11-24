import 'dart:io';

class Sach {
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _trangThaiMuon;

  // Constructor
  Sach(this._maSach, this._tenSach, this._tacGia, this._trangThaiMuon);

  // Getter
  String get masach => _maSach;
  String get tenSach => _tenSach;
  String get tacGia => _tacGia;
  bool get trangThaiMuon => _trangThaiMuon;

  // Setter 
  set maSach (String maSach){
    if(maSach.isNotEmpty){
      _maSach = maSach;
    }
  }

  set tenSach (String tenSach){
    if(tenSach.isNotEmpty){
      _tenSach = tenSach;
    }
  }

  set tacGia (String tacGia){
    if(tacGia.isNotEmpty){
      _tacGia = tacGia;
    }
  }

  void hienThiThongTin(){
    print('Mã sách: $_maSach');
    print('Tên sách: $_tenSach');
    print('Tác giả: $_tacGia');
    stdout.write('Trạng thái mượn:');
    _trangThaiMuon==true?print('Đã mượn'):print('Chưa mượn');
  }
}