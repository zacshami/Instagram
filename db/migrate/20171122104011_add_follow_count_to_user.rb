class AddFollowCountToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :follows_count, :integer, :default => 0
  end
end
