class UpdatePostCommentsCount < ActiveRecord::Migration[6.1]
  def up
    Post.find_each do |post|
      Post.reset_counters(post.id, :comments)
    end
  end
end
