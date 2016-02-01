class AddNameToTheathers < ActiveRecord::Migration
  def change
    add_column :theaters, :name, :string
  end
end
