require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  let(:sender) {
    User.create(email:"user-#{Faker::Name.name_with_middle.split(' ').first}@example.com",
             name: Faker::Name.name_with_middle)
  }
  let(:recipient) {
    User.create(email:"user-#{Faker::Name.name_with_middle.split(' ').first}@example.com",
             name: Faker::Name.name_with_middle)
  }
  let(:conversation) {
    Conversation.create(sender_id: sender.id, recipient_id: recipient.id)
  }

  describe "POST # create" do
    it "returns a successful response" do
      post :create, xhr: true, params: {
        message: {
          body: "Hello", user_id: sender.id
        },
        conversation_id: conversation.id
      }
      expect(response).to be_successful
    end

    
    it "renders the create template" do
      post :create, xhr: true, params: {
        message: {
          body: "Hello", user_id: sender.id
        },
        conversation_id: conversation.id
      }
      expect(response).to render_template("create")
    end
  end
end