class CreateLastChanges < ActiveRecord::Migration
  def change
    create_table :last_changes do |t|
      t.references :matchday, index: true, foreign_key: true
      t.datetime :change_time

      t.timestamps null: false
    end
  end
end
