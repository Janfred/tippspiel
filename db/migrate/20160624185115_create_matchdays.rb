class CreateMatchdays < ActiveRecord::Migration
  def change
    create_table :matchdays do |t|
      t.references :season, index: true, foreign_key: true
      t.string :name
      t.string :matchdayId

      t.timestamps null: false
    end
  end
end
