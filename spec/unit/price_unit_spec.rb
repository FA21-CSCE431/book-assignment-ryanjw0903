# location: spec/unit/price_unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(price: 10.5)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a value' do
    subject.price = 0
    expect(subject).not_to be_valid
  end
end


