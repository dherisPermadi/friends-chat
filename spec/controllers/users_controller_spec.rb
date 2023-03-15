require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before(:each) do
    @user = create(:user)
  end

  describe "GET # show" do
    context "success show" do
      it "returns a successful response" do
        get :show, params: { id: @user.id }
        expect(response).to be_successful
      end

      it "renders the show template" do
        get :show, params: { id: @user.id }
        expect(response).to render_template("show")
      end
    end
  end
end