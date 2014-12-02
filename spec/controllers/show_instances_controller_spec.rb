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

RSpec.describe ShowInstancesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # ShowInstance. As you add validations to ShowInstance, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ShowInstancesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all show_instances as @show_instances" do
      show_instance = ShowInstance.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:show_instances)).to eq([show_instance])
    end
  end

  describe "GET show" do
    it "assigns the requested show_instance as @show_instance" do
      show_instance = ShowInstance.create! valid_attributes
      get :show, {:id => show_instance.to_param}, valid_session
      expect(assigns(:show_instance)).to eq(show_instance)
    end
  end

  describe "GET new" do
    it "assigns a new show_instance as @show_instance" do
      get :new, {}, valid_session
      expect(assigns(:show_instance)).to be_a_new(ShowInstance)
    end
  end

  describe "GET edit" do
    it "assigns the requested show_instance as @show_instance" do
      show_instance = ShowInstance.create! valid_attributes
      get :edit, {:id => show_instance.to_param}, valid_session
      expect(assigns(:show_instance)).to eq(show_instance)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ShowInstance" do
        expect {
          post :create, {:show_instance => valid_attributes}, valid_session
        }.to change(ShowInstance, :count).by(1)
      end

      it "assigns a newly created show_instance as @show_instance" do
        post :create, {:show_instance => valid_attributes}, valid_session
        expect(assigns(:show_instance)).to be_a(ShowInstance)
        expect(assigns(:show_instance)).to be_persisted
      end

      it "redirects to the created show_instance" do
        post :create, {:show_instance => valid_attributes}, valid_session
        expect(response).to redirect_to(ShowInstance.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved show_instance as @show_instance" do
        post :create, {:show_instance => invalid_attributes}, valid_session
        expect(assigns(:show_instance)).to be_a_new(ShowInstance)
      end

      it "re-renders the 'new' template" do
        post :create, {:show_instance => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested show_instance" do
        show_instance = ShowInstance.create! valid_attributes
        put :update, {:id => show_instance.to_param, :show_instance => new_attributes}, valid_session
        show_instance.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested show_instance as @show_instance" do
        show_instance = ShowInstance.create! valid_attributes
        put :update, {:id => show_instance.to_param, :show_instance => valid_attributes}, valid_session
        expect(assigns(:show_instance)).to eq(show_instance)
      end

      it "redirects to the show_instance" do
        show_instance = ShowInstance.create! valid_attributes
        put :update, {:id => show_instance.to_param, :show_instance => valid_attributes}, valid_session
        expect(response).to redirect_to(show_instance)
      end
    end

    describe "with invalid params" do
      it "assigns the show_instance as @show_instance" do
        show_instance = ShowInstance.create! valid_attributes
        put :update, {:id => show_instance.to_param, :show_instance => invalid_attributes}, valid_session
        expect(assigns(:show_instance)).to eq(show_instance)
      end

      it "re-renders the 'edit' template" do
        show_instance = ShowInstance.create! valid_attributes
        put :update, {:id => show_instance.to_param, :show_instance => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested show_instance" do
      show_instance = ShowInstance.create! valid_attributes
      expect {
        delete :destroy, {:id => show_instance.to_param}, valid_session
      }.to change(ShowInstance, :count).by(-1)
    end

    it "redirects to the show_instances list" do
      show_instance = ShowInstance.create! valid_attributes
      delete :destroy, {:id => show_instance.to_param}, valid_session
      expect(response).to redirect_to(show_instances_url)
    end
  end

end
