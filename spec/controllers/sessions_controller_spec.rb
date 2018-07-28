require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  render_views
  describe 'post create' do
    it 'redirects to the login page if :name is nil' do
      post :create
      expect(response).to redirect_to controller: 'sessions', action: 'new'
    end

    it 'redirects to login page if :name is empty' do
      post :create, name: ''
      expect(response).to redirect_to controller: 'sessions', action: 'new'
    end

    it 'sets session[:name] if :name was given' do
      me = 'Deus'
      post :create, name: me
      expect(@request.session[:name]).to eq me
    end

    it 'redirects to "/" if logged in' do
      me = 'Deus'
      post :create, name: me
      expect(response).to redirect_to('/')
    end
  end

  descibe 'post destroy' do
    it 'leaves session[:name] nil if it was not set' do
      post :destroy
      expect(@request.session[:name]).to be nil
    end

    it 'clears session[:name] if it was set' do
      post :create, name: 'Deus'
      expect(@request.session[:name]).not_to be nil
      post :destroy
      expect(@request.session[:name]).to be nil
    end
  end
end