## 1. 테마(메터리얼3)
- [링크](https://m3.material.io/theme-builder#/custom)

## 2.const 워닝 끄기
- analysis_options.yaml > lints > prefer_const_constructors: false
- analysis_options.yaml > lints > prefer_const_literals_to_create_immutables: false

~~~
dart fix --dry-run  
dart fix --apply    
~~~

## 3. styled_widget
- [링크](https://pub.dev/packages/styled_widget)

## 4. logger
- [링크](https://pub.dev/packages/logger)

## 5. flutter_gen
- [링크](https://pub.dev/packages/flutter_gen)
dev_dependencies
  build_runner:
  flutter_gen_runner:
~~~
dart pub global activate flutter_gen
flutter pub get
flutter packages pub run build_runner build
~~~

## 6. ScreenUtilInit
- [링크](https://pub.dev/packages/flutter_screenutil)

## 7. 그외 라이브러리
- cached_network_image
- font_awesome_flutter
  - [링크](https://itsallwidgets.com/flutter-icon-finder)
- flutter_font_icons
- flutter_statusbarcolor_ns

## 8. tmdb
- [링크](https://pub.dev/packages/tmdb_api)
- [링크2](https://www.themoviedb.org/settings/api?language=ko)
- [링크3](https://developers.themoviedb.org/3/movies/get-top-rated-movies)
- [링크4](https://javiercbk.github.io/json_to_dart/)

- 영화는 어디서 가져오나요?
  - TMDB 이라는 세계에서 제일큰 곳에서 가져와요. - [문서](https://developers.themoviedb.org/3/getting-started/popularity)
- TMDB 사용방법
  1. 홈페이지에 [가입한후](https://www.themoviedb.org/signup?language=ko)에
  2. [API키 요청](https://developers.themoviedb.org/3/getting-started/introduction)해서 받은 다음
  3. [문서](https://developers.themoviedb.org/3/getting-started/languages)를 보면서 REST 요청으로 영화들을 받을 수 있어요.



## 8. 준비 및 라이브러리 조합

## 9. 화면분석 및 진행
- [링크](https://danielkim88.notion.site/5-Netflix-973dd31ae4aa4b029fada20b201dfd6a)


