require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe OfferingsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Offering. As you add validations to Offering, be sure to
  # adjust the attributes here as well.
  let(:route) do
    Route.create(name: 'Cape Town Roundtrip')
  end

  let(:valid_attributes) do
    { title: 'Cape Town Roundtrip on Sale', route_id: route.id, price: 3499.99, company: 'White Star Line' }
  end

  let(:invalid_attributes) do
    { title: 'Cape Town Roundtrip on Sale', price: 'free' }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OfferingsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      offering = Offering.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      offering = Offering.create! valid_attributes
      get :show, params: { id: offering.to_param }, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Offering' do
        expect do
          post :create, params: { offering: valid_attributes }, session: valid_session
        end.to change(Offering, :count).by(1)
      end

      it 'renders a JSON response with the new offering' do
        post :create, params: { offering: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(offering_url(Offering.last))
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the new offering' do
        post :create, params: { offering: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { price: 3599.99 }
      end

      it 'updates the requested offering' do
        offering = Offering.create! valid_attributes
        put :update, params: { id: offering.to_param, offering: new_attributes }, session: valid_session
        offering.reload
        expect(offering.price).to eq(new_attributes[:price])
      end

      it 'renders a JSON response with the offering' do
        offering = Offering.create! valid_attributes

        put :update, params: { id: offering.to_param, offering: valid_attributes }, session: valid_session
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the offering' do
        offering = Offering.create! valid_attributes

        put :update, params: { id: offering.to_param, offering: invalid_attributes }, session: valid_session
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested offering' do
      offering = Offering.create! valid_attributes
      expect do
        delete :destroy, params: { id: offering.to_param }, session: valid_session
      end.to change(Offering, :count).by(-1)
    end
  end
end
