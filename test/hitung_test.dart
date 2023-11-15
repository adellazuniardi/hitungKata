import 'package:flutter_test/flutter_test.dart';
import 'package:hitungKata/main.dart';

void main() {
  test('Menghitung Jumlah Kata', () {
    expect(hitungJumlahKata('Hello, World!'), 2);
    expect(hitungJumlahKata('Flutter is awesome'), 3);
  });

  test('Menghitung Jumlah Kata', () {
    expect(hitungJumlahKata('bapakmu tak tendang ndase'), 4);
  });

}