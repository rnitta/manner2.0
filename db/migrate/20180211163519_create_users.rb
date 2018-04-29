class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :name
      t.string :profile
      t.integer :lv

      t.timestamps
    end
    change_column :users, :profile, :string, null: false, default: ''
    change_column :users, :name, :string, null: false, default: ''
    change_column :users, :lv, :integer, null: false, default: 0
  end
end
