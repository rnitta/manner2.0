class CreateUserRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :user_rankings do |t|
      t.references :user, foreign_key: true
      t.integer :rank
      t.integer :value
      t.timestamps
    end
  end
end
