require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  context 'Get /users' do
    it 'Check if response status was correct' do
      get '/users/:user_id/posts'
      expect(response).to have_http_status(200)
    end
    it 'Check if a correct template was rendered.' do
      get '/users/:user_id/posts'
      expect(response).to render_template(:index)
    end
    it 'Check if the response body includes correct placeholder text.' do
      get '/users/:user_id/posts'
      expect(response.body).to include('Here is a list of posts for a given user')
    end
  end

  context 'Get /users/id' do
    it 'Check if response status was correct' do
      get '/users/:user_id/posts/id'
      expect(response).to have_http_status(200)
    end
    it 'Check if a correct template was rendered.' do
      get '/users/:user_id/posts/id'
      expect(response).to render_template(:show)
    end
    it 'Check if the response body includes correct placeholder text.' do
      get '/users/:user_id/posts/id'
      expect(response.body).to include('Here will be the chosen post out of the list of posts')
    end
  end
end
