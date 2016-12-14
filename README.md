# README

## アピールポイント

### Dockerize
ポータブルな開発環境を提供するために，Dockerfileを用意した．
疎な運用とメンテナンス性を高めるために，1サービス1コンテナの原則のもと，docker-composeにより
- web (Rails)
- db (MySQL)
- proxy (Nginx)

のコンテナを連携させている．

```sh
$ git clone git@github.com:itkq/cookgram.git
$ cd cookgram
$ docker-compose -f docker-compose.development.yml up --build
```

だけで開発環境を構築できる．url: [http://dev.cookgram/](http://dev.cookgram/)

### Continuous Integration / Continuous Delivery
ソフトウェアの品質を保証するために，CicleCIによる継続的インテグレーションを設定した．
Githubと連携させ，masterブランチにプッシュされるとRSpecでユニットテストが実行される．
同時に，webのdockerイメージもビルドされる（環境変数$CIRCLE_SHA1により，hub.docker.com
でバージョン管理している）．

また，CirCleCIとAWS ECSを連携させ，ステージング環境の継続的デリバリを設定した．
テスト通過後，ecs-cliからECSにcomposeデプロイする．
ECSの機能により，ホットデプロイが可能である．
ステージング環境では，別途Nginxコンテナを設定し，Basic認証を付加している．

Basic Auth:  
url:

コンテナデプロイすることにより，将来的にはオートスケールの対応が可能である．

## 設計

### 設計思想
- 見た目にはこだわらず最低限実装する．Bootstrapを使う．
- インフラ環境整備をアピールする．

### 使用環境・ライブラリ
- Webアプリ: Rails 5 (Ruby)  
  ある程度機能要件が整理されていたため，開発速度を重視して情報量の多いフレームワークを選択．
  - ログイン機能: devise  
      デファクトであり，使用経験があったことから選択．
  - 画像アップロード: paperclip  
      carrierwaveと比較して，機能的に薄く使いやすいと考え選択．
- DB: MySQL  
  最も触っているDBを選択．
- リバースプロキシ: Nginx  
  最も触っているWebサーバを選択．
