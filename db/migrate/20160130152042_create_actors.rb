class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :firstname
      t.string :lastname
      t.date :date_birth
      t.boolean :is_male, default: true
      t.references :play, index:true

      t.timestamps null: false
    end
  end
end
