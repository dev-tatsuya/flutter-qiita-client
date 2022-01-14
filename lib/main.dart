import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_qiita_client/presentation/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
