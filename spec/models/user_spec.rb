require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Jack', photo: 'new photo', bio: 'I am user 1') }
  before { subject.save }

  it 'name should not be nill' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'posts counter should be 0 or greater ' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end

  it 'posts counter should be an integer ' do
    subject.posts_counter = 2.5
    expect(subject).to_not be_valid
  end
end
