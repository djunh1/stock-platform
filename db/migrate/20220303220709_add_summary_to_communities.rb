class AddSummaryToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :summary, :text
  end
end
