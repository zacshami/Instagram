class RemoveFollowCountToUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :follows_count
  end
end
