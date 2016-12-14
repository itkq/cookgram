# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.seed(
  { id: 1, email: 'aaa@cookgram.com', password: 'aaaaaa' },
  { id: 2, email: 'bbb@cookgram.com', password: 'bbbbbb' },
  { id: 3, email: 'ccc@cookgram.com', password: 'cccccc' }
)

img = "#{Rails.root}/db/img/cook_photo%02d.jpg"
Post.seed(
  { id: 1,  picture: File.new(img % 1),  user_id: 1, body: 'お茶しました' } ,
  { id: 2,  picture: File.new(img % 2),  user_id: 2, body: 'おいしそうなクロワッサン！' } ,
  { id: 3,  picture: File.new(img % 3),  user_id: 3, body: 'チョコレートたち' } ,
  { id: 4,  picture: File.new(img % 4),  user_id: 3, body: 'チョコレート2' } ,
  { id: 5,  picture: File.new(img % 5),  user_id: 3, body: 'チョコケーキ' } ,
  { id: 6,  picture: File.new(img % 6),  user_id: 2, body: '今日の朝食は卵多めでした。' } ,
  { id: 7,  picture: File.new(img % 7),  user_id: 1, body: 'よくわからんサラダ作った' } ,
  { id: 8,  picture: File.new(img % 8),  user_id: 2, body: '生野菜セット！' } ,
  { id: 9,  picture: File.new(img % 9),  user_id: 1, body: 'サバ' } ,
  { id: 10, picture: File.new(img % 10), user_id: 1, body: '寿司' } ,
  { id: 11, picture: File.new(img % 11), user_id: 2, body: 'お昼ごはん！' } ,
  { id: 12, picture: File.new(img % 12), user_id: 1, body: 'ビール最高' } ,
  { id: 13, picture: File.new(img % 13), user_id: 2, body: 'おやつ！' } ,
  { id: 14, picture: File.new(img % 14), user_id: 3, body: '育ててます' } ,
  { id: 15, picture: File.new(img % 15), user_id: 2, body: 'さくらんぼ狩りにいってきました。' } ,
  { id: 16, picture: File.new(img % 16), user_id: 1, body: 'カロリーが高い' } ,
  { id: 17, picture: File.new(img % 17), user_id: 1, body: 'めし' } ,
  { id: 18, picture: File.new(img % 18), user_id: 1, body: '肉' } ,
  { id: 19, picture: File.new(img % 19), user_id: 3, body: 'ラ・フランス' } ,
  { id: 20, picture: File.new(img % 20), user_id: 2, body: 'ハンバーガー作ってます！' } ,
  { id: 21, picture: File.new(img % 21), user_id: 3, body: 'Coffee' }
)
