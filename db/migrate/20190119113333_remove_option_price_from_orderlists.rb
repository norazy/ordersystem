class RemoveOptionPriceFromOrderlists < ActiveRecord::Migration[5.2]
  def change
    remove_column :orderlists, :option_price, :integer
  end
end
