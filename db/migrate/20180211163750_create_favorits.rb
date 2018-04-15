class CreateFavorits < ActiveRecord::Migration[5.1]
  def change
    create_table :favorits do |t|
      t.references :manner, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
