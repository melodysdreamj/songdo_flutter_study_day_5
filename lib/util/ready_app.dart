import 'package:logger/logger.dart';
import 'package:tmdb_api/tmdb_api.dart' as tmdb_api;

readyApp() {
  logger = Logger(
    printer: PrettyPrinter(
      methodCount: 8,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  tmdb = tmdb_api.TMDB(
    //TMDB instance
    tmdb_api.ApiKeys('f98cf7f4e9a3a1442e1c602b24c65788',
        'apiReadAccessTokenv4'), //ApiKeys instance with your keys,
  );
}

late Logger logger;
late tmdb_api.TMDB tmdb;
