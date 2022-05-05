class Response < ApplicationRecord
  belongs_to :request

  validates :link, :link_title, presence: true
end
