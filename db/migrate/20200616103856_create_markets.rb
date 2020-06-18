class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.integer :status, default: 0
      t.integer :percent_cash, default: 0

      t.timestamps
    end
  end
end
