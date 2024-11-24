import 'sach.dart';
import 'dart:io';

class DocGia {
  String _maDocGia;
  String _hoTen;
  List<Sach> _listSachDangMuon = [];

  // Constructor
  DocGia(this._maDocGia, this._hoTen);

  // Getter
  String get maDocGia => _maDocGia;
  String get hoten => _hoTen;
  List<Sach> get listSachDangMuon => _listSachDangMuon;

  // Setter 
  set maDocGia (String maDocGia){
    if(maDocGia.isNotEmpty){
      _maDocGia = maDocGia;
    }
  }

  set hoTen (String hoTen){
    if(hoTen.isNotEmpty){
      _hoTen = hoTen;
    }
  }

}