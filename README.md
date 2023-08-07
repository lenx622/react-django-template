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
