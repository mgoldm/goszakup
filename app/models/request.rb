class Request < ApplicationRecord
  belongs_to :user

  has_many :responses, dependent: :destroy
  has_many :key_words, dependent: :destroy

  validates :body, presence: true
end
