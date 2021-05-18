class AddTopicToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :topic_id, :integer
    add_index :posts, :topic_id
  end
end
