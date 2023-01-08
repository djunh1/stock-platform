class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :portfolios, :earnings_date, :purchase_date
  end
end
