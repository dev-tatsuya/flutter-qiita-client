# Flutter Qiita Client

## このリポジトリに関する記事
[[Flutter] Riverpodで状態管理した一覧画面テンプレートとそのアーキテクチャ例](https://zenn.dev/dev_tatsuya/articles/cffaa7c50dfad7)

## 起動方法
`.env.template`を参考にしてプロジェクトルートに`.env`ファイルを作成し、Qiitaアクセストークンを設定する

→ `flutter run`

## Flutter SDK バージョン
Flutter: 3.13.2
Dart: 3.1.0

fvmを用いて管理しているため、ローカルマシンのFlutter SDKが 3.13.2 ではない場合、
3.13.2 に変更するもしくは、fvmを利用することで起動することができる。

### fvm導入方法
#### 1. fvmのインストール
`$ flutter pub global activate fvm`

#### 2. パスを通す（各々のシェルに応じて）
例
`$ export PATH=$PATH:$HOME/.pub-cache/bin`

#### 3. 2.8.0をインストールする
`fvm install`

# Testing

はじめに、Flutter アプリのテストに関する[公式ドキュメント](https://docs.flutter.dev/testing/overview)を参照ください。

## Unit tests ( Unit Test )

はじめに、Unit tests に関する[公式ドキュメント](https://docs.flutter.dev/cookbook/testing/unit/introduction)を参照ください。

本プロジェクトにおける Unit tests は、公式ドキュメントで紹介されている手法に則って作成するものとし、以降 Unit Test と称します。

Unit Test の対象は、Flutter に依存するコード以外を対象とします。

Unit Test を記述するためのパッケージは、`flutter_test` に加えて、依存関係がある場合には必要に応じて `mocktail` を使用します。

`test/` 配下に `double/mock/`, `double/fake/`, `preset/` がありますが、それぞれの定義は以下とします。

- `double/mock/`
  - mocktail を利用して Mock で継承されたサブクラスは、xUnit Test Patterns でいう dummy, stub, spy, mock の振る舞いを有しています（when, verify, verifyOrder等が利用可能なため）。そのため、これらを意識的に判別することはせず、これらのクラスの接頭辞には Mock をつけることを決まりごととします。
- `double/fake/`
  - mocktail を利用して Fake で継承されたサブクラスは、xUnit Test Patterns でいう fake の振る舞いを有します。このクラスの接頭辞には Fake をつけることとします。
- `preset/`
  - あらかじめ用意しておきたい実オブジェクトを `preset` 接頭辞をつけて定義します。

Unit Test を記述するファイルの配置場所は、`test/` 配下に Unit Test 対象ファイルと同階層となるように配置します。ファイル名は対象ファイルに `_test` 接尾辞を付与したものとします。

```
e.g.
Unit Test 対象ファイル: lib/data/model/maintenance.dart
Unit Test 記述ファイル: test/data/model/maintenance_test.dart
```

`expect` を使用する場合には、isTrue や equals などのマッチャーを使用して自然な英文になるようにします。もちろん、`equals` がなくても、`null` だけでもテストは通りますが、書き方を統一する目的で記しています。

```dart
e.g.
expect(actual, equals(expected));
expect(actual, isNull);
expect(actual, isTrue);
```

### ローカルマシンでの実行方法
```
// すべてを実行
make test

// ファイルを指定して実行
make test path=test/data/model/maintenance_test.dart

// 各々の IDE やエディタで実行
// Help yourself.
```

### リモート ( CI サービス / CI ) 上での実行方法

GitHub Actions を使用して実行しています。トリガーは以下。
- development ブランチへの Push
- Pull Request ( PR ) の作成と同期
- GitHub リポジトリ > Actions での手動実行

また、CI 上での Unit Test では、カバレッジを測定し `Octocov` でその結果を見やすくして PR にコメントするようにしています。

詳しくは `.github/workflows/unit-test.yml` を参照ください。

## Widget tests ( Visual Regression Test / VRT )

はじめに、Widget tests に関する[公式ドキュメント](https://docs.flutter.dev/cookbook/testing/widget/introduction)を参照ください。

本プロジェクトにおける Widget tests は、公式ドキュメントで紹介されている手法とは異なり、画面やコンポーネントのスクリーンショットを base branch と PR branch でそれぞれ撮り、それらを比較して意図しない UI の変更を防ぐテスト手法を採用します。以降 Visual Regression Test ( VRT ) と称します。

<img src=https://raw.githubusercontent.com/Quramy/reg-suit/master/images/github_flow.png>
※ 出典: https://github.com/reg-viz/reg-suit


VRT を実現するために以下のサービスを使用します。
- `golden_toolkit`
  - 対象 Widget のスクリーンショットを撮影できるパッケージ
- `reg-suit`
  - 2 箇所 (base branch と PR branch) にあるスクリーンショット群を比較し、その差分を HTML 形式のレポートとして作成してくれる CLI

VRT の対象は、Flutter に依存するコードを対象とします。

VRT を記述するためのパッケージは、`golden_toolkit` に加えて、依存関係がある場合には必要に応じて `mocktail` を使用します。`golden_toolkit` は対象 Widget のスクリーンショットを撮ることができるパッケージです。

VRT を記述するファイルの配置場所は、`test/` 配下に Unit Test 対象ファイルと同階層となるように配置します。ファイル名は対象ファイルに `_golden_test` 接尾辞を付与したものとします。

```
e.g.
VRT 対象ファイル: lib/ui/settings/maintenance/maintenance_page.dart
VRT 記述ファイル: test/ui/settings/maintenance/maintenance_page_golden_test.dart
```

### ローカルマシンでの実行方法

ローカルマシンでは VRT を実行することは困難（可能ではあるので手法は後述します）なので、VRT 対象 Widget のスクリーンショットを撮って理想の状態かどうかを確認するだけとします。

```
// すべてのスクリーンショットを撮影
make golden

// ファイルを指定してスクリーンショットを撮影
make golden path=test/ui/settings/maintenance/maintenance_page_golden_test.dart
```

#### ローカルマシンでの VRT 手法
1. base branch にチェックアウトして `make golden` を実行する
   - ここで Actual を取得する
2. PR branch にチェックアウトして `make test_all` を実行する
   - ここで Expected を取得して Actual と比較する

## Integration tests ( End to End Test / E2E Test )

