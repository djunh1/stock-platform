class AddSellDateToPortfolios < ActiveRecord::Migration[6.1]
  def change
    add_column :portfolios, :sell_date, :date,  null: true
  end
end
