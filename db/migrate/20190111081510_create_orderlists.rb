class CreateOrderlists < ActiveRecord::Migration[5.2]
  def change
    create_table :orderlists do |t|
      t.integer     :user_id
      t.integer     :menu_id
      t.integer     :price
      t.integer     :number
      t.integer     :state
      t.integer     :option_id
      t.integer     :option_price
      t.timestamps
    end
  end
end
