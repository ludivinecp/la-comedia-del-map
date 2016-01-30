class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.integer :number_of_places
      t.datetime :availability

      t.timestamps null: false
    end
  end
end
