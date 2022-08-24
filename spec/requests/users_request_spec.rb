require 'rails_helper'

RSpec.describe 'Users', type: :request do
  context 'Get /users' do
    it 'Check if response status was correct' do
      get '/users'
      expect(response).to have_http_status(200)
    end
    it 'Check if a correct template was rendered.' do
      get '/users'
      expect(response).to render_template(:index)
    end
    it 'Check if the response body includes correct placeholder text.' do
      get '/users'
      expect(response.body).to include('Here will be the list of available users')
    end
  end

  context 'Get /users/id' do
    it 'Check if response status was correct' do
      get '/users/id'
      expect(response).to have_http_status(200)
    end
    it 'Check if a correct template was rendered.' do
      get '/users/id'
      expect(response).to render_template(:show)
    end
    it 'Check if the response body includes correct placeholder text.' do
      get '/users/id'
      expect(response.body).to include('Here will be the chosen user out of users list')
    end
  end
end
