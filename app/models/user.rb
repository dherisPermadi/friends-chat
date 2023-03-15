class User < ApplicationRecord
  validates :email, :name, presence: true
  validates :email, uniqueness: true

  has_many :messages
  has_many :conversations, foreign_key: :sender_id
end
