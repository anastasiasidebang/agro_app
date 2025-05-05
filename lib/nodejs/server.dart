import 'package:http/http.dart' as http;
import 'dart:convert';

void registerUser(String email, String phone, String password) async {
  final response = await http.post(
    Uri.parse('http://localhost:3000/register'),
    headers: {"Content-Type": "application/json"},
    body: jsonEncode({"email": email, "phone": phone, "password": password}),
  );

  if (response.statusCode == 201) {
    print('Registrasi berhasil!');
  } else {
    print('Gagal registrasi.');
  }
}
