
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_pertama/main.dart';

void main() {
  testWidgets('Hello World menampilkan profil mahasiswa',
      (WidgetTester tester) async {

    await tester.pumpWidget(const MyApp());

    // Memeriksa judul aplikasi
    expect(find.text('Pemrograman Mobile — Pertemuan 1'),
        findsOneWidget);

    // Memeriksa tulisan Hello World
    expect(find.text('Hello World!'), findsOneWidget);

    // Memeriksa identitas mahasiswa
    expect(find.text('Syuhada Simbolon'), findsOneWidget);
    expect(find.text('NIM: 4243550016'), findsOneWidget);
    expect(find.text('Kelas: PSIK24D'), findsOneWidget);
    expect(find.text('Universitas Negeri Medan'), findsOneWidget);

    // Memeriksa tombol
    expect(find.text('Sapa Saya'), findsOneWidget);
  });
}
