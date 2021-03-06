# frozen_string_literal: true
namespace :update_ranking do
  desc 'ユーザーランキング更新(投稿数)'
  task user_by_posts: :environment do
    UserRanking.delete_all
    User.all.each do |user|
      if UserRanking.create(user: user, value: user.manners.size)
        p "OK!#{user.name}"
      else
        p "エラー#{user.name}"
      end
    end
  end
  desc 'ユーザーランキング更新(いいね数)'
  task user_by_favorites: :environment do
    UserRanking.delete_all
    User.all.each do |user|
      favs = 0
      user.manners.each do |manner|
        favs += manner.favorites.size
      end
      if UserRanking.create(user: user, value: user.favorites.size)
        p "OK!#{user.name}:#{favs}"
      else
        p "エラー#{user.name}"
      end
    end
  end
  desc 'テーマランキング更新(投稿数)'
  task subject_by_manners: :environment do
    SubjectRanking.delete_all
    Subject.all.each do |subject|
      if SubjectRanking.create(subject: subject, value: subject.manners.size)
        p "OK!#{subject.title}"
      else
        p "エラー#{subject.title}"
      end
    end
  end
end
