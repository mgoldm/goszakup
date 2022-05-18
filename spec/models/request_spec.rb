require 'rails_helper'

RSpec.describe Request, type: :model do
  it { should have_many(:key_words).dependent(:destroy) }
  it { should have_many(:responses).dependent(:destroy) }
  it { should belong_to(:user) }
  it { should validate_presence_of :body }
  it { should accept_nested_attributes_for :key_words }
end
