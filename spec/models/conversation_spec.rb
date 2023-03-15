require 'rails_helper'

RSpec.describe Conversation, type: :model do
  let(:sender) {
    User.create(email:"user-#{Faker::Name.name_with_middle.split(' ').first}@example.com",
             name: Faker::Name.name_with_middle)
  }
  let(:recipient) {
    User.create(email:"user-#{Faker::Name.name_with_middle.split(' ').first}@example.com",
             name: Faker::Name.name_with_middle)
  }
  subject { Conversation.new(sender_id: sender.id, recipient_id: recipient.id) }

  context 'valid when all column is assigned' do
    it 'should be valid when all column is assigned' do
      expect(subject).to be_valid
    end
  end

  describe "# not valid when ?" do
    it 'should be not valid when sender_id nil' do
      subject.sender_id = nil
    end

    it 'should be not valid when recipient_id nil' do
      subject.recipient_id = nil
    end

    after do
      expect(subject).to_not be_valid
    end
  end
end
