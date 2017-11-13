require 'rails_helper'

RSpec.describe Port, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:code) }
    it { should validate_presence_of(:country) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:code) }
  end
end
