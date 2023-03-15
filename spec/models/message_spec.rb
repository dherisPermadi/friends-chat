require 'rails_helper'

RSpec.describe Message, type: :model do
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
  subject {
    Message.new(body: 'Test', conversation_id: conversation.id, user_id: sender.id)
  }

  context 'valid when all column is assigned' do
    it 'should be valid when all column is assigned' do
      expect(subject).to be_valid
    end
  end

  describe "# not valid when ?" do
    it 'should be not valid when user_id nil' do
      subject.user_id = nil
    end

    it 'should be not valid when conversation_id nil' do
      subject.conversation_id = nil
    end

    after do
      expect(subject).to_not be_valid
    end
  end
end
