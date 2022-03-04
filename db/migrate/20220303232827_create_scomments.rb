class CreateScomments < ActiveRecord::Migration[6.1]
  def change
    create_table :scomments do |t|
      t.text :message
      t.references :user
      t.references :post

      t.timestamps
    end
  end
end
