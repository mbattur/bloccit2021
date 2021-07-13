class AddRankToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :rank, :float
  end
end
