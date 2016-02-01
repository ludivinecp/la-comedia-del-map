class AddPriceToPlay < ActiveRecord::Migration
  def change
    add_column :plays, :base_price, :float
  end
end
