class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :name
      t.string :register_ip
      t.string :login_ip
      t.integer :exp
      t.integer :rank
      t.integer :lv
      t.string :password_digest, null: false

      t.timestamps
    end
    change_column :users, :login_id, :string, null: false
    change_column :users, :name, :string, null: false
    change_column :users, :exp, :integer, null: false, default: 0
    change_column :users, :rank, :integer, null: false, default: 0
    change_column :users, :lv, :integer, null: false, default: 0
  end
end
