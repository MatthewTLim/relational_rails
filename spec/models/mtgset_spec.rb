require 'rails_helper'

RSpec.describe Mtgset, type: :model do
  describe 'associations' do
    it { should have_many(:cards) }
  end
end
