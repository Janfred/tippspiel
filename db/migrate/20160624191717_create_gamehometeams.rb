class CreateGamehometeams < ActiveRecord::Migration
  def change
    create_table :gamehometeams do |t|
      t.references :team, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
