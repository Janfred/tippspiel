class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.references :league, index: true, foreign_key: true
      t.string :name
      t.string :seasonId

      t.timestamps null: false
    end
  end
end
