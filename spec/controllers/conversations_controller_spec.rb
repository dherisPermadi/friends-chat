require 'rails_helper'

RSpec.describe ConversationsController, type: :controller do
  let(:sender) {
    User.create(email:"user-#{Faker::Name.name_with_middle.split(' ').first}@example.com",
             name: Faker::Name.name_with_middle)
  }
  let(:recipient) {
    User.create(email:"user-#{Faker::Name.name_with_middle.split(' ').first}@example.com",
             name: Faker::Name.name_with_middle)
  }

  describe "POST # create" do
    it "returns a successful response" do
      post :create, params: { recipient_id: recipient.id, sender_id: sender.id },
           xhr: true, session: { conversations: [] }
      expect(response).to be_successful
    end

    
    it "renders the create template" do
      post :create, params: { recipient_id: recipient.id, sender_id: sender.id },
           xhr: true, session: { conversations: [] }
      expect(response).to render_template("create")
    end
  end
end