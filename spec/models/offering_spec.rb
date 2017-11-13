require 'rails_helper'

RSpec.describe Offering, type: :model do
  context 'validations' do
    it { should validate_presence_of(:company) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:route) }
    it { should validate_uniqueness_of(:title) }
  end

  describe 'Associations' do
    it { should belong_to(:route) }
  end
end
