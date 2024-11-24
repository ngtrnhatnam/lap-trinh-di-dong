import 'sach.dart';
import 'doc_gia.dart';

class ThuVien {
  List<Sach> _listSach = [];
  List<DocGia> _listDocGia = [];

  // Constructor
  ThuVien(this._listDocGia, this._listSach);

  // Getter
  List get listSach => _listSach;
  List get listDocGia => _listDocGia;

  // Thêm sách & đọc giả
  void themSach(Sach sach) => _listSach.add(sach);
  void themDocGia(DocGia docgia) => _listDocGia.add(docgia);

  // Hiển thị danh sách sách
  void hienThiDanhSach(){
    print('\n----------------------------');
    print('\n----------------------------');
    print('\nDanh sách sách của thư viện');
    for(var sach in _listSach){
      print('\n----------------------------');
      sach.hienThiThongTin();
    }
  }

    // Phương thức mượn sách
  void muonSach(String maDocGia, String maSach) {
    
    /// Tìm độc giả theo mã
  var _docGia = _listDocGia.firstWhere(
    (_docGia) => _docGia.maDocGia == maDocGia,
    orElse: () => DocGia('','Không xác định'));

    if (_docGia.maDocGia.isEmpty) {
      print('Không tìm thấy độc giả với mã: $maDocGia');
      return;
    }
  }

      // Tìm sách theo mã
  var sach = _listSach.firstWhere(
      (sach) => sach.masach == maSach,
      orElse: () => null);

    if (sach == null) {
      print('Không tìm thấy sách với mã: $maSach');
      return;
    }

    // Kiểm tra trạng thái sách
    if (sach.trangThaiMuon) {
      print('Sách "${sach.tenSach}" đã được mượn.');
      return;
    }

    // Thêm sách vào danh sách mượn của độc giả
    docGia.listSachDangMuon.add(sach);

    // Cập nhật trạng thái sách
    sach.trangThaiMuon = true;

    print('Độc giả "${docGia.hoten}" đã mượn sách "${sach.tenSach}".');
}