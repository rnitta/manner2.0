class AddSubjectsCountToCategories < ActiveRecord::Migration[5.1]
  def self.up
    add_column :categories, :subjects_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :categories, :subjects_count
  end
end
