class AddIndexForForumPosts < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!
  
  def change
    add_index :forum_posts, :user_id, unique: true, algorithm: :concurrently
  end
end
