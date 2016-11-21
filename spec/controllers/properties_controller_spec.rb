require 'rails_helper'

RSpec.describe PropertiesController, type: :controller do
  describe 'property#index' do
    it 'it should show the index page' do
      get :index
      expect(response).to have_http_status :success
    end
  end

  describe 'property#sales' do
    it 'it should show the sales page' do
      get :sales
      expect(response).to have_http_status :success
    end
  end

  describe 'property#rentals' do
    it 'it should show the rentals page' do
      get :rentals
      expect(response).to have_http_status :success
    end
  end

  describe 'property#admin' do
    it 'it should show the admin page' do
      get :admin
      expect(response).to have_http_status :success
    end
  end

  describe 'property#new' do
    it 'it should show the new page' do
      get :new
      expect(response).to have_http_status :success
    end
  end

  describe 'property#edit' do
    it 'it should show the edit page' do
      property = FactoryGirl.create(:property, active: 'Yes', status: 'Sale', neighborhood: 'Park Slope', price: '300000', address: 'Grand Army Plaza')

      get :edit, id: property.id
      expect(response).to have_http_status :success
    end

    it 'it should show a 404 error if the property is not found' do
      FactoryGirl.create(:property, active: 'Yes', status: 'Sale', neighborhood: 'Park Slope', price: '300000', address: 'Grand Army Plaza')

      get :edit, id: 'andrew'
      expect(response).to have_http_status :not_found
    end
  end
end
