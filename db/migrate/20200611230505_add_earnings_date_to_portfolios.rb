class AddEarningsDateToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :earnings_date, :datetime, null: true
  end
end
