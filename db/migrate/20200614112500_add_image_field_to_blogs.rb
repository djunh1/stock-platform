class AddImageFieldToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :main_image, :text
  end
end
