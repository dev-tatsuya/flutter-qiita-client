# Flutter Qiita Client

## このリポジトリに関する記事
[[Flutter] Riverpodで状態管理した一覧画面テンプレートとそのアーキテクチャ例](https://zenn.dev/dev_tatsuya/articles/cffaa7c50dfad7)

## 起動方法
`.env.template`を参考にしてプロジェクトルートに`.env`ファイルを作成し、Qiitaアクセストークンを設定する

→ `flutter run`

## Flutter SDK バージョン
Flutter: 2.8.0
Dart: 2.15.0

fvmを用いて管理しているため、ローカルマシンのFlutter SDKが2.8.0ではない場合、
2.8.0に変更するもしくは、fvmを利用することで起動することができる。

### fvm導入方法
#### 1. fvmのインストール
`$ flutter pub global activate fvm`

#### 2. パスを通す（各々のシェルに応じて）
例
`$ export PATH=$PATH:$HOME/.pub-cache/bin`

#### 3. 2.8.0をインストールする
`fvm install 2.8.0`

#### 4. 2.8.0を使用する（プロジェクト配下で）
`fvm use 2.8.0`
