import 'dien_thoai.dart';
import 'hoa_don_ban_hang.dart';
import 'dart:io';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _listDienThoai = [];
  List<HoaDon> _listHoaDon = [];

  // Constructor
  CuaHang(this._tenCuaHang, this._diaChi);

  // Thêm điện thoại
  void themDienThoai(DienThoai dt) => _listDienThoai.add(dt);

  // Cập nhật thông tin điện thoại
  void capnhatDienThoai(){
    var choose;
    print("1. Mã điện thoại\n2.Tên điện thoại\n3.Hãng sản xuất\n4.Giá nhập\n5.Giá bán\n6.Số lượng tồn kho\n7.Trạng thái\n0.Kết thúc chỉnh sửa");
    do{
      do {
        stdout.write('Nhập thông tin muốn chỉnh sửa: ');
        String? input = stdin.readLineSync();
        if(input!=null){
            choose = double.tryParse(input)??null;
        }if(choose == null){
            print('Hãy nhập số như bảng hướng dẫn trên!');
        }
      } while (choose == null);
      switch(choose){
        case 1:{
          print('Mã điện thoại:');
        }
      }
    } while(choose!=0);
  }

  // Ngừng kinh doanh điện thoại
  bool ngungKinhDoanh() {
    return false;
  }
}