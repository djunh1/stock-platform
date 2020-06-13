class RemoveSubtitleFromPortfolio < ActiveRecord::Migration[6.0]
  def change
    remove_column :portfolios, :subtitle, :string
  end
end
