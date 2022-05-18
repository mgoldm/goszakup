require 'rails_helper'

RSpec.describe KeyWord, type: :model do
  it { should belong_to(:request) }
end
