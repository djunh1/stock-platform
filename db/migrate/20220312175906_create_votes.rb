class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.references :user
      t.references :post
      t.boolean :upvote
      t.timestamps
    end
  end
end
