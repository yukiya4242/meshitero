class RenamePostImagsToPostImages < ActiveRecord::Migration[6.1]
  def change
    rename_table :post_imags, :post_images
  end
end
