class AddFavoritesCountToManners < ActiveRecord::Migration[5.1]
  def self.up
    add_column :manners, :favorites_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :manners, :favorites_count
  end
end
