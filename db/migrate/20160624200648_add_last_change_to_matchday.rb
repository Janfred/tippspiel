class AddLastChangeToMatchday < ActiveRecord::Migration
  def change
    add_reference :matchdays, :last_change, index: true, foreign_key: true
  end
end
