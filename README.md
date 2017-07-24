# README
新卒採用選考のアプリケーション課題．

## アピールポイント

### Dockerize
ポータブルな開発環境を提供するために，Dockerfile を用意した．疎な運用とメンテナンス性を高めるために，1サービス1コンテナの原則のもと，docker-compose により
- web (Rails)
- db (MySQL)
- proxy (nginx)

のコンテナを連携させ，次の手順だけで開発環境を構築できる．URL: [http://dev.cookgram/](http://dev.cookgram/)

```sh
$ git clone git@github.com:itkq/cookgram.git
$ cd cookgram
$ docker-compose -f docker-compose.development.yml up --build
```

### Continuous Integration / Continuous Delivery
ソフトウェアの品質を保証するために，CicleCI による継続的インテグレーションを設定した．Github と連携させ，master ブランチにプッシュされると RSpec でユニットテストが実行される．
同時に，web の docker イメージもビルドされる．

また，CircleCI と Heroku を連携させ，ステージング環境の継続的デリバリを設定した．テスト通過後，web コンテナをデプロイする．DB は heroku の MySQL プラグインを用いている．ステージング環境では，Rails の設定により Basic 認証を付加している．

Basic Auth: cookgram / ppap  
URL: [ https://cookgram.herokuapp.com/ ](https://cookgram.herokuapp.com/)  
Test user: aaa@cookgram.com / [secret password]

また，以下の手順で ECS へのデプロイも可能である．

```sh
$ ecs-cli configure --region ap-northeast-1 --cluster Cookgram
$ ecs-cli up --keypair aws --capability-iam --size 1 --instance-type t2.small
$ ecs-cli compose -f docker-compose.staging.yml up
```

## 設計

### 設計思想
- 見た目にはこだわらず最低限実装する．Bootstrap を使う．
- インフラ環境整備をアピールする．

### 使用環境・ライブラリ
- Web アプリ: Rails 5 (Ruby)  
  ある程度機能要件が整理されていたため，開発速度を重視して情報量の多いフレームワークを選択．
  - ログイン機能: devise  
      デファクトであり，使用経験があったことから選択．
  - 画像アップロード: paperclip  
      carrierwave と比較して，機能的に薄く使いやすいと考え選択．
- DB: MySQL  
  最も触っている DB を選択．
- リバースプロキシ: nginx  
  最も触っている Web サーバを選択．
