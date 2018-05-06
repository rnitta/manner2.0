class AddMannersCountToSubjects < ActiveRecord::Migration[5.1]
  def self.up
    add_column :subjects, :manners_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :subjects, :manners_count
  end
end
