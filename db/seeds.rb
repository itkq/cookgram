# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'aaa@cookgram.com', password: 'aaaaaa')
user2 = User.create(email: 'bbb@cookgram.com', password: 'bbbbbb')
user3 = User.create(email: 'ccc@cookgram.com', password: 'cccccc')
users = [user1, user2, user3]

img_dir = "#{Rails.root}/db/img/"
Dir.entries(img_dir)[2..-1].each_with_index do |img, idx|
  u = users[idx % users.size]
  Post.create(
    body: 'テスト',
    picture: File.new(img_dir+img),
    user_id: u.id,
  )
end
