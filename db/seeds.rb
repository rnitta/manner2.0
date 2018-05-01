# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: 'テストユーザー', profile: 'ひとことこめんと', email: 'test@test.test', password: 'testtest')
category1 = Category.create(name: '就活', friendly_id: 'job_hunting')
category2 = Category.create(name: '結婚', friendly_id: 'marriage')
subject1 = Subject.create(user_id: user.id, category_id: category1.id, title: '採用面接でのマナー')
subject2 = Subject.create(user_id: user.id, category_id: category1.id, title: '内定辞退のマナー')
subject3 = Subject.create(user_id: user.id, category_id: category2.id, title: 'ご祝儀のマナー')
Manner.create(user_id: user.id, subject_id: subject1.id, title: '床を汚してはいけないので、常につま先立ちをする。')
Manner.create(user_id: user.id, subject_id: subject1.id, title: '面接官と仲良くなるために、タメ口で喋ったほうがよい。')
