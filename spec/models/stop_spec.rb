require 'rails_helper'

RSpec.describe Stop, type: :model do
  context 'validations' do
    it { should validate_presence_of(:route) }
    it { should validate_presence_of(:port) }
    it { should validate_presence_of(:arrival) }
  end

  describe 'Associations' do
    it { should belong_to(:route) }
    it { should belong_to(:port) }
  end
end
