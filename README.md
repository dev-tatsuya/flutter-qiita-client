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

<img src=https://github.com/k1LoW/octocov/blob/main/docs/comment.png>

はじめに、Unit tests に関する[公式ドキュメント](https://docs.flutter.dev/cookbook/testing/unit/introduction)を参照ください。

本プロジェクトにおける Unit tests は、公式ドキュメントで紹介されている手法に則って作成するものとし、以降 Unit Test と称します。

Unit Test の目的は主に以下です。
- バグの早期発見: 小規模なコードの断片を個別にテストすることで、バグや不具合を早期に見つけ出すことができます。
- 品質保証: 各関数やメソッドの挙動や振る舞いのパターンを網羅することで、基本的な品質を保証します。
- リファクタリング: 変更が他の部分に悪影響を与えていないことを確認でき、リファクタリングに心理的安全性をもたらします。
- コードの文書化: Unit Test は一種の文書化としても機能します。開発者はテストコードを読むことで、各関数やメソッドがどのように動作するのかを理解できます。

Unit Test の対象は、Flutter に依存しないコードを対象とします。

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

<img src=https://raw.githubusercontent.com/Quramy/reg-suit/master/images/github_flow.png>

はじめに、Widget tests に関する[公式ドキュメント](https://docs.flutter.dev/cookbook/testing/widget/introduction)を参照ください。

本プロジェクトにおける Widget tests は、公式ドキュメントで紹介されている手法とは異なり、画面やコンポーネントのスクリーンショットを base branch と PR branch でそれぞれ撮り、それらを比較して意図しない UI の変更を防ぐテスト手法を採用します。以降 Visual Regression Test ( VRT ) と称します。

VRT の主な目的は以下です。
- UI の変更を迅速に特定: VRT を使用すると、UI の各コンポーネントが期待通りに表示されることを確認し、変更またはリグレッションを迅速に特定できます。
- デザインとの整合性保持: デザインのガイドラインに従っているかどうかを確認し、統一感のあるユーザーインターフェイスを保持します。
- クロスプラットフォームテスト: 異なるブラウザやデバイスでアプリケーションが適切に表示されることを保証します。

VRT を実現するために以下のサービスを使用します。
- `golden_toolkit`
  - 対象 Widget のスクリーンショットを撮影できるパッケージ
- `reg-suit`
  - 2 箇所 (base branch と PR branch) にあるスクリーンショット群を比較し、その差分を HTML 形式のレポートとして作成してくれる CLI

VRT の対象は、Flutter に依存するコードを対象とします。

VRT を記述するためのパッケージは、`golden_toolkit` に加えて、依存関係がある場合には必要に応じて `mocktail` を使用します。

VRT を記述するファイルの配置場所は、`test/` 配下に Unit Test 対象ファイルと同階層となるように配置します。ファイル名は対象ファイルに `_golden_test` 接尾辞を付与したものとします。

```
e.g.
VRT 対象ファイル: lib/ui/settings/maintenance/maintenance_page.dart
VRT 記述ファイル: test/ui/settings/maintenance/maintenance_page_golden_test.dart
```

### ローカルマシンでの実行方法

ローカルマシンでは VRT を実行することは面倒臭い（可能ではあるので手法は後述します）なので、VRT 対象 Widget のスクリーンショットを撮って理想の状態かどうかを確認するだけとします。

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

### リモート ( CI サービス / CI ) 上での実行方法

GitHub Actions を使用して実行しています。トリガーは以下。
- PR の作成と同期、削除

作成されたレポートは GitHub Pages にホスティングしています。

PR が削除されると、ホスティングされた Page は削除されるようにしています。

詳しくは `.github/workflows/vrt.yml` を参照ください。

## Integration tests ( End to End Test / E2E Test )

![demo](https://user-images.githubusercontent.com/847683/187275009-ddbdf963-ce1d-4e07-ac08-b10f145e8894.gif)

Integration tests に関する[公式ドキュメント](https://docs.flutter.dev/testing/integration-tests)は読まなくても問題ありません。

本プロジェクトにおける Integration tests は、公式ドキュメントで紹介されている手法とは完全に異なり、[Mestro](https://maestro.mobile.dev/) を採用しています。以降 End to End Test ( E2E Test ) と称します。

複数のコンポーネントやモジュールの連携を同時にテストする Integration tests とは異なり、実際に Firebase 環境に接続してシステム全体が完全な連携のもとでユーザーの要求を適切に処理できることを検証しているため、本プロジェクトでは E2E Test と呼ぶこととします。

E2E Test の主な目的は以下です。
- 全体的なシステムの確認: アプリケーション全体が連携して正しく機能することを確認し、異なる部分の間での問題を防止します。
- 実際の UX のシミュレーション: 実際のユーザーが経験するシナリオをシミュレートしてテストし、ユーザーにとってスムーズな経験を提供することを確認します。
- リリース前の最終確認: 新しい機能や変更がシステム全体にどのような影響を与えるかを評価し、リリース前の最終確認を行うことができます。

E2E Test を記述するファイルの配置場所は、Maestro に依存して `.maestro/` とします。`maestro test` コマンドで実際に実行されるファイルは `.maestro` 直下のファイルのみで、`.maestro/src/` 配下は適宜テストファイルの分割や抽出に使用します。

### ローカルマシンでの実行方法

```
// Maestro CLI をインストールする
// See also: https://maestro.mobile.dev/getting-started/installing-maestro
curl -Ls "https://get.maestro.mobile.dev" | bash

// 環境変数 E2E=true として Simulator/Emulator でアプリを起動する
fvm flutter run --debug --flavor development --dart-define=FLAVOR=development --dart-define=E2E=true

// 実行
make e2e_ios
make e2e_android
```

テストファイルを記述する場合には、テストファイルを書いて適宜 `make e2e_xxx` で確かめてもよいが、`maestro studio` が便利です。アプリが起動している状態で、`maestro studio` を実行するとブラウザ上に localhost の GUI が表示され、そこ表示されているスマホ画面をポチポチするだけで Maestro のコマンドを記述して実行することができます。

詳しくは [Maestro 公式ドキュメント](https://maestro.mobile.dev/)を参照ください。

### リモート ( CI サービス / CI ) 上での実行方法

GitHub Actions を使用してアプリをビルドして Maestro Cloud にアップロードしています。トリガーは以下。
- PR に `/e2e ios` or `/e2e android` とコメント

詳しくは `.github/workflows/command-e2e-xxx.yaml` を参照ください。

この操作は完了までに 10 ~ 20 分ほどかかります。

完了後に PR のコメントに記載される URL にアクセスすると、Maestro Cloud Console に遷移することができ、そこで E2E Test の録画やログなどを見ることができます。

詳しくは [Maestro Cloud 公式ドキュメント](https://cloud.mobile.dev/)を参照ください。

### E2E Test 専用の電話番号
以下の電話番号は、E2E Test 以外では利用しないようにしてください。実際に Firebase の development 環境に接続してテストを行っているので、テスト結果に影響が出る恐れがあります。

- development 環境
  - 090-0000-0000 (Android)
  - 090-0000-0000 (iOS)



