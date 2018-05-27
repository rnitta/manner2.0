class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :friendly_id
      t.integer :count

      t.timestamps
    end
    change_column :categories, :name, :string, null: false
    change_column :categories, :friendly_id, :string, null: false
    change_column :categories, :count, :integer, null: false, default: 0
  end
end
