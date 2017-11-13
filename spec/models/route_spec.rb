require 'rails_helper'

RSpec.describe Route, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'Associations' do
    it { should have_many(:stops) }
  end
end
