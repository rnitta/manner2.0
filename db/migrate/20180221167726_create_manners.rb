class CreateManners < ActiveRecord::Migration[5.1]
  def change
    create_table :manners do |t|
      t.references :user, foreign_key: true
      t.references :subject, foreign_key: true
      t.string :title
      t.integer :star
      t.integer :pv

      t.timestamps
    end
    change_column :manners, :title, :string, null: false
    change_column :manners, :star, :integer, null: false, default: 0
    change_column :manners, :pv, :integer, null: false, default: 0
  end
end
