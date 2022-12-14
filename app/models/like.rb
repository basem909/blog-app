class Like < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  def update_likes_counter
    post.increment!(:likes_counter)
  end

  after_save :update_likes_counter
end
