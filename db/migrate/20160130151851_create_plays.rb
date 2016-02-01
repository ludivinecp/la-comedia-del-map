class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :title
      t.datetime :date_start
      t.datetime :date_end
      t.text :synopsys

      t.timestamps null: false
    end
  end
end
