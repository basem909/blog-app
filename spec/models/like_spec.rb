require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'Testing like validations and methods' do
    user1 = User.create(name: 'Jack', photo: 'photo profile', bio: 'dev and stuff', posts_counter: 0)
    post1 = Post.create(author: user1, title: 'Hello world', text: 'This is my first post', comments_counter: 0,
                        likes_counter: 0)
    like = Like.create(post: post1, author: user1)

    it 'author_id should be equal to user_id' do
      expect(like.author_id).to eq(user1.id)
    end

    it 'post_id should be equal to Post.id' do
      expect(like.post_id).to eq(post1.id)
    end

    it 'likes_counter should be equal to 1' do
      post = Post.find(like.post_id)
      expect(post.likes_counter).to eq(1)
    end
  end
end
