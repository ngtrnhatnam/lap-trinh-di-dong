// Giai pt bac 2: ax^2 + bx + c = 0
import 'dart:io';
import 'dart:math';
var a, b, c, delta, x1, x2;

void main() {
    // Yeu cau nhap he so a phai khac 0 va phai nhap vao so
    do {
        stdout.write('Nhập hệ số a (a ≠ 0): ');
        String? input = stdin.readLineSync();
        if(input!=null){
            a = double.tryParse(input)??0;
        }
        if(a == 0){
            print('Hệ số a phải là số và ≠ 0. Vui lòng nhập lại');
        }
    } while (a == 0);
    
    // Yeu cau nhap he so b va c phai nhap vao so
    do {
        stdout.write('Nhập hệ số b: ');
        String? input = stdin.readLineSync();
        if(input!=null){
            b = double.tryParse(input)??null;
        }if(b == null){
            print('Hệ số b phải là số. Vui lòng nhập lại');
        }
    } while (b == null);

    do {
        stdout.write('Nhập hệ số c: ');
        String? input = stdin.readLineSync();
        if(input!=null){
            c = double.tryParse(input)??null;
        }if(c == null){
            print('Hệ số c phải là số. Vui lòng nhập lại');
        }
    } while (c == null);

    // Tim gia tri delta
    delta = pow(b,2) - 4*a*c;
    
    if(delta<0){
        print("Phương trình vô nghiệm");
    } else if(delta==0){ 
        x1 = x2 = -b/(2*a);
        print("Phương trình có nghiệm kép: x1 = x2 = $x1");
    } else if(delta > 0){
        x1 = (-b + sqrt(delta))/2*a;
        x2 = (-b - sqrt(delta))/2*a;
        print("Phương trình có 2 nghiệm: x1 = $x1; x2 = $x2");
    }
}