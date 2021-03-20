import 'dart:io';

String jsonReader(String fileName) => 
  File('test/json_mocks/$fileName').readAsStringSync();

List<String> jsonArrayReader(String fileName) => 
  File('test/json_mocks/$fileName').readAsLinesSync();