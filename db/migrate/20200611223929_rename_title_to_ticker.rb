class RenameTitleToTicker < ActiveRecord::Migration[6.0]
  def change
    rename_column :portfolios, :title, :ticker
  end
end
