class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :matchday, index: true, foreign_key: true
      t.string :gameId
      t.datetime :start
      t.boolean :finished
      t.decimal :result1
      t.decimal :result2
      t.decimal :factor

      t.timestamps null: false
    end
  end
end
