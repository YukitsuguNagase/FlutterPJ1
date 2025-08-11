import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static String get openAiApiKey => dotenv.get('OPENAI_API_KEY', fallback: '');
  static String get openAiTextModel =>
      dotenv.get('OPENAI_TEXT_MODEL', fallback: 'gpt-5-mini');
  static String get openAiImageModel =>
      dotenv.get('OPENAI_IMAGE_MODEL', fallback: 'gpt-image-1');
  static String get admobAppId => dotenv.get('ADMOB_APP_ID', fallback: '');
  static String get admobBannerId =>
      dotenv.get('ADMOB_BANNER_ID', fallback: '');
}
