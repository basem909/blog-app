require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: 'Hello world') }
  before { subject.save }

  it 'title should not be nill' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'title should not exceed 250 char' do
    subject.title = 'hello' * 250
    expect(subject).to_not be_valid
  end

  it 'likes counter should be 0 or greater ' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'likes counter should be an integer ' do
    subject.likes_counter = 2.5
    expect(subject).to_not be_valid
  end

  it 'comments counter should be 0 or greater ' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'likes counter should be an integer ' do
    subject.comments_counter = 2.5
    expect(subject).to_not be_valid
  end
end
