import 'package:flutter_test/flutter_test.dart';
import 'package:try_14/view/person.dart';

void main() {
  group("Mengecek mahasiswa esa unggul", () {
    Person p;
    p = Person();

    test("Inisialisasi Objek yang ada di esa unggul", () {
      expect(p.name, equals("no name"));
      expect(p.age, equals(0));
    });

    test("Mahasiswa harus Rapid Test dahulu", () {
      p.age = -5;
      expect(p.age, isPositive);
    });

    test("Mahasiswa harus mengikuti prosedur yang ada", () {
      expect(p.luckyNumbers,
          allOf([hasLength(equals(3)), isNot(anyElement(isNegative))]));
    });
  });

  setUp(() {
    print("Set Up");
  });

  tearDown(() {
    print("Tear Down");
  });
}
