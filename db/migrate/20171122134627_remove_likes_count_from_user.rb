class RemoveLikesCountFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :likes_count
  end
end
