class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.integer :number_of_places
      t.datetime :availibility_from
      t.datetime :availibility_to

      t.timestamps null: false
    end
  end
end
