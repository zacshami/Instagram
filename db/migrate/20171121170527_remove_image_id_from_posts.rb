class RemoveImageIdFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :posts, :image
  end
end
