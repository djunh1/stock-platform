class CreateCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :communities do |t|
      t.references :user
      t.string :name
      t.string :url
      t.text :rules
      t.integer :total_traders
      t.timestamps
    end
  end
end
