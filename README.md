# react-django-template

このテンプレートは、ReactとDjangoを使用したウェブアプリケーション開発のためのスターターテンプレートです。DockerとDocker Composeを使用して、必要な依存関係を管理し、アプリケーションの実行環境を構築します。

## Requirements

* Docker v20.10.21
* Docker Compose v2.13.0
* GNU Make v3.81

## Installation

このテンプレートを使用するためのインストール手順は以下の通りです。

1. リポジトリをクローンします:
```bash
git clone https://github.com/lenx622/react-django-template.git
```

2. プロジェクトのディレクトリに移動します:
```bash
cd react-django-template
```

3. 初期設定を行います:
```bash
make init
```
以上で、開発環境のセットアップは完了です。

## Usage

開発サーバーを起動するためには以下のコマンドを実行します:
```bash
make up
```

起動が完了すると下記のURLから確認できます:
* バックエンド: http://localhost:8000
* フロントエンド: http://localhost:3000

## Commands
このテンプレートには、以下のコマンドが含まれています:

#### up:
開発サーバーをバックグラウンドで起動します。
```bash
make up
```

#### down:
起動中のサービスを停止し、関連するコンテナ、ネットワーク、ボリュームを削除します。
```bash
make down
```

#### reload:
backend と frontend のサービスを再起動します。
```bash
make reload
```

#### migrate:
Djangoのマイグレーションを実行します。
```bash
make migrate
```

#### init:
初期セットアップを行います。
```bash
make init
```

#### generate_secret_key:
Djangoのシークレットキーを生成するスクリプトを実行します。
```bash
make generate_secret_key
```

#### create_django_app:
指定した名前のDjangoアプリを作成します。APPNAME変数にアプリの名前を設定してください。
```bash
make create_django_app APPNAME=<your_app_name>
```

#### npm_i:
frontendで指定したNPMモジュールをインストールします。MODULE変数にモジュール名を設定してください。
```bash
make npm_i MODULE=<module_name>
```
