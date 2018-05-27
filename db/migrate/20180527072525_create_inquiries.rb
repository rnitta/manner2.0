class CreateInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :inquiries do |t|
      t.references :user, foreign_key: true
      t.string :title, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
