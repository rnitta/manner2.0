class CreateSubjectRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_rankings do |t|
      t.references :subject, foreign_key: true
      t.integer :rank
      t.integer :value
      t.timestamps
    end
  end
end
