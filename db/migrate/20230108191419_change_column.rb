class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :portfolios, :purchase_date, :date
  end
end
