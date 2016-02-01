class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :price
      t.datetime :date
      t.datetime :hour
      t.integer :number_of_people
      t.references :user, index:true
      t.references :plays, index:true
      t.timestamps null: false
    end
  end
end
