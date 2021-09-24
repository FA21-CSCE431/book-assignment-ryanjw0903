# location: spec/unit/date_unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(published_date: 'Tue, 04 Dec 2007')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end


