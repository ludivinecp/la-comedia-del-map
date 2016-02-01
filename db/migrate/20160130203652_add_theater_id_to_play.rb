class AddTheaterIdToPlay < ActiveRecord::Migration
  def change
    add_reference :plays, :theater, index: true, foreign_key: true

  end
end
