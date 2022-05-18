class Request < ApplicationRecord
  belongs_to :user

  has_many :responses, dependent: :destroy
  has_many :key_words, dependent: :destroy

  accepts_nested_attributes_for :key_words, reject_if: :all_blank

  validates :body, presence: true
end
