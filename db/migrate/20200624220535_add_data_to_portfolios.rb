class AddDataToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :pivot_buy, :decimal, precision: 10, scale: 2
    add_column :portfolios, :stop_loss, :decimal, precision: 10, scale: 2
    add_column :portfolios, :status, :integer, default: 0
  end
end
