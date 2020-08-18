![スクリーンショット 2020-08-17 17 53 08](https://user-images.githubusercontent.com/67052090/90377147-847ff400-e0b2-11ea-9511-b5f591e042fb.png)



# このアプリについて
## :earth_asia:アプリ名
HealthFit  
## :earth_asia:URL
http://175.41.200.113/
## :earth_asia:説明
* 毎日の体重をグラフで管理します    
* コミュニティ機能によりユーザー同士であなたの目標達成をサポートします
## :earth_asia:制作背景  
「体重を管理できるものがあったら使いたい」  

母親と妹の声を形にしたのが今回のアプリです。  
ダイエットがいつも続かない人におすすめ。
## :earth_asia:使い方
### 体重管理機能  
① Name,Email,Passwordを入力しサインアップしてください  
②「さあ、始めよう」をクリックすると体重管理画面が表示されます  
③「登録」ボタンを押してあなたの身体データを入力します  
④「今日の体重を入力」を押して毎日の体重を入力します  
⑤ 体重が折れ線グラフになって表示されます  

[![Image from Gyazo](https://i.gyazo.com/6c631841d14e60fc8268309ff4cafee7.gif)](https://gyazo.com/6c631841d14e60fc8268309ff4cafee7)
### コミュニティー機能  
① ヘッダー右上の「B.A」を押すとチャット画面が表示されます  
② ヘッダー右上の写真アイコンを押すとメッセージや画像を送信できます  

[![Image from Gyazo](https://i.gyazo.com/7e371b51a876adaff9179a7db3fcd341.gif)](https://gyazo.com/7e371b51a876adaff9179a7db3fcd341)
## :earth_asia:主な使用技術  
* ruby '2.6.5'  
* rails '6.0.0'  
* mysql2  
* Haml/Scss  
* gem 'chartkick'  
* gem 'devise'  
* gem 'carrierwave'  
* gem 'capistrano'  
* AWSのEC2/S3を使ったデプロイ  
* アプリケーションサーバー: unicorn  
* ウェブサーバー: nginx  
## :earth_asia:工夫した点
* gem 'chartkick'を使ったグラフ表示  
始めて使ったgemでしたが、うまくDBから情報を引っ張ってくることができました。
* 基礎代謝計算  
入力された身体データから基礎代謝を算出しています
## :earth_asia:課題・今後実装したい機能  
* コメント機能  
* 「いいね！」機能  
* グラフに目標体重のボーダーラインを表示させる  
* メッセージ送信時の非同期通信  
* SNSのAPIを使ったユーザー新規登録・ログイン機能  
* 目標までの残り日数を正しく表示させる  
* 細かいビューの修正

# :earth_asia:DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :messages
- has_many :weights
- has_many :features

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|content|string|
|image|string|
|user_id|references|foreign_key: true|
### Association
- belongs_to :user

## featuresテーブル
|Column|Type|Options|
|------|----|-------|
|length|integer|
|weight|integer|
|age|integer|
|goalweight|inreger|
|goaldate|inreger|
|user_id|references|foreign_key: true|
### Association
- has_many :weights

## featuresテーブル
|Column|Type|Options|
|------|----|-------|
|dailyweight|integer|
|user_id|references|foreign_key: true|
|feature_id|references|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :feature
