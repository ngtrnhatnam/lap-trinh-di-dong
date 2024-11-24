import '../models/sach.dart';
import '../models/doc_gia.dart';
import '../models/thu_vien.dart';

void main() {
  // Khởi tạo sách và độc giả
  var sach1 = Sach('S1', 'Lập trình Dart', 'Nguyễn Văn A', false);
  var docGia1 = DocGia('DG1', 'Trần Văn B');

  // Khởi tạo thư viện
  var thuVien = ThuVien([], []);
  thuVien.themSach(sach1);
  thuVien.themDocGia(docGia1);

  // Hiển thị danh sách sách
  thuVien.hienThiDanhSach();

  // Mượn sách
  thuVien.muonSach('DG1', 'S1');

  // Hiển thị danh sách sách sau khi mượn
  thuVien.hienThiDanhSach();
}