class AddLikeeCountToUser < ActiveRecord::Migration[5.1]
  def change 
    add_column :users, :likee_count, :integer, :default => 0
  end
end
