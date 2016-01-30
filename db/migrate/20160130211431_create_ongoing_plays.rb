class CreateOngoingPlays < ActiveRecord::Migration
  def change
    create_table :ongoing_plays do |t|
      t.datetime :playing_from
      t.datetime :playing_to
      t.references :plays, index: :true
      t.references :theaters, index: :true

      t.timestamps null: false
    end
  end
end
