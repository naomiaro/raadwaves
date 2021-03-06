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

RSpec.describe ShowRulesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # ShowRule. As you add validations to ShowRule, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ShowRulesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all show_rules as @show_rules" do
      show_rule = ShowRule.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:show_rules)).to eq([show_rule])
    end
  end

  describe "GET show" do
    it "assigns the requested show_rule as @show_rule" do
      show_rule = ShowRule.create! valid_attributes
      get :show, {:id => show_rule.to_param}, valid_session
      expect(assigns(:show_rule)).to eq(show_rule)
    end
  end

  describe "GET new" do
    it "assigns a new show_rule as @show_rule" do
      get :new, {}, valid_session
      expect(assigns(:show_rule)).to be_a_new(ShowRule)
    end
  end

  describe "GET edit" do
    it "assigns the requested show_rule as @show_rule" do
      show_rule = ShowRule.create! valid_attributes
      get :edit, {:id => show_rule.to_param}, valid_session
      expect(assigns(:show_rule)).to eq(show_rule)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ShowRule" do
        expect {
          post :create, {:show_rule => valid_attributes}, valid_session
        }.to change(ShowRule, :count).by(1)
      end

      it "assigns a newly created show_rule as @show_rule" do
        post :create, {:show_rule => valid_attributes}, valid_session
        expect(assigns(:show_rule)).to be_a(ShowRule)
        expect(assigns(:show_rule)).to be_persisted
      end

      it "redirects to the created show_rule" do
        post :create, {:show_rule => valid_attributes}, valid_session
        expect(response).to redirect_to(ShowRule.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved show_rule as @show_rule" do
        post :create, {:show_rule => invalid_attributes}, valid_session
        expect(assigns(:show_rule)).to be_a_new(ShowRule)
      end

      it "re-renders the 'new' template" do
        post :create, {:show_rule => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested show_rule" do
        show_rule = ShowRule.create! valid_attributes
        put :update, {:id => show_rule.to_param, :show_rule => new_attributes}, valid_session
        show_rule.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested show_rule as @show_rule" do
        show_rule = ShowRule.create! valid_attributes
        put :update, {:id => show_rule.to_param, :show_rule => valid_attributes}, valid_session
        expect(assigns(:show_rule)).to eq(show_rule)
      end

      it "redirects to the show_rule" do
        show_rule = ShowRule.create! valid_attributes
        put :update, {:id => show_rule.to_param, :show_rule => valid_attributes}, valid_session
        expect(response).to redirect_to(show_rule)
      end
    end

    describe "with invalid params" do
      it "assigns the show_rule as @show_rule" do
        show_rule = ShowRule.create! valid_attributes
        put :update, {:id => show_rule.to_param, :show_rule => invalid_attributes}, valid_session
        expect(assigns(:show_rule)).to eq(show_rule)
      end

      it "re-renders the 'edit' template" do
        show_rule = ShowRule.create! valid_attributes
        put :update, {:id => show_rule.to_param, :show_rule => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested show_rule" do
      show_rule = ShowRule.create! valid_attributes
      expect {
        delete :destroy, {:id => show_rule.to_param}, valid_session
      }.to change(ShowRule, :count).by(-1)
    end

    it "redirects to the show_rules list" do
      show_rule = ShowRule.create! valid_attributes
      delete :destroy, {:id => show_rule.to_param}, valid_session
      expect(response).to redirect_to(show_rules_url)
    end
  end

end
