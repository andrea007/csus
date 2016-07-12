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

RSpec.describe SusScoresController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # SusScore. As you add validations to SusScore, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SusScoresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all sus_scores as @sus_scores" do
      sus_score = SusScore.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:sus_scores)).to eq([sus_score])
    end
  end

  describe "GET #show" do
    it "assigns the requested sus_score as @sus_score" do
      sus_score = SusScore.create! valid_attributes
      get :show, {:id => sus_score.to_param}, valid_session
      expect(assigns(:sus_score)).to eq(sus_score)
    end
  end

  describe "GET #new" do
    it "assigns a new sus_score as @sus_score" do
      get :new, {}, valid_session
      expect(assigns(:sus_score)).to be_a_new(SusScore)
    end
  end

  describe "GET #edit" do
    it "assigns the requested sus_score as @sus_score" do
      sus_score = SusScore.create! valid_attributes
      get :edit, {:id => sus_score.to_param}, valid_session
      expect(assigns(:sus_score)).to eq(sus_score)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new SusScore" do
        expect {
          post :create, {:sus_score => valid_attributes}, valid_session
        }.to change(SusScore, :count).by(1)
      end

      it "assigns a newly created sus_score as @sus_score" do
        post :create, {:sus_score => valid_attributes}, valid_session
        expect(assigns(:sus_score)).to be_a(SusScore)
        expect(assigns(:sus_score)).to be_persisted
      end

      it "redirects to the created sus_score" do
        post :create, {:sus_score => valid_attributes}, valid_session
        expect(response).to redirect_to(SusScore.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved sus_score as @sus_score" do
        post :create, {:sus_score => invalid_attributes}, valid_session
        expect(assigns(:sus_score)).to be_a_new(SusScore)
      end

      it "re-renders the 'new' template" do
        post :create, {:sus_score => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested sus_score" do
        sus_score = SusScore.create! valid_attributes
        put :update, {:id => sus_score.to_param, :sus_score => new_attributes}, valid_session
        sus_score.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested sus_score as @sus_score" do
        sus_score = SusScore.create! valid_attributes
        put :update, {:id => sus_score.to_param, :sus_score => valid_attributes}, valid_session
        expect(assigns(:sus_score)).to eq(sus_score)
      end

      it "redirects to the sus_score" do
        sus_score = SusScore.create! valid_attributes
        put :update, {:id => sus_score.to_param, :sus_score => valid_attributes}, valid_session
        expect(response).to redirect_to(sus_score)
      end
    end

    context "with invalid params" do
      it "assigns the sus_score as @sus_score" do
        sus_score = SusScore.create! valid_attributes
        put :update, {:id => sus_score.to_param, :sus_score => invalid_attributes}, valid_session
        expect(assigns(:sus_score)).to eq(sus_score)
      end

      it "re-renders the 'edit' template" do
        sus_score = SusScore.create! valid_attributes
        put :update, {:id => sus_score.to_param, :sus_score => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested sus_score" do
      sus_score = SusScore.create! valid_attributes
      expect {
        delete :destroy, {:id => sus_score.to_param}, valid_session
      }.to change(SusScore, :count).by(-1)
    end

    it "redirects to the sus_scores list" do
      sus_score = SusScore.create! valid_attributes
      delete :destroy, {:id => sus_score.to_param}, valid_session
      expect(response).to redirect_to(sus_scores_url)
    end
  end

end