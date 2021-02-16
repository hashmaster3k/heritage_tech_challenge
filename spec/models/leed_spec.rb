require 'rails_helper'

RSpec.describe Leed do
  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :phone }
  end

  describe 'instantiation' do
    it 'should create a new leed' do
      expect(Leed.count).to eq(0)

      Leed.create(
        first_name: 'Keanu',
        last_name: 'Reeves',
        phone: '(555) 555-555'
      )

      expect(Leed.count).to eq(1)
    end
  end

  describe 'instance methods' do
    it 'should concatenate first name and last name' do
      leed = Leed.create(
        first_name: 'Keanu',
        last_name: 'Reeves',
        phone: '(555) 555-555'
      )

      expect(leed.name).to eq("Keanu Reeves")
    end
  end

  it 'should format date for sent text' do
    leed = Leed.create(
      first_name: 'Keanu',
      last_name: 'Reeves',
      phone: '(555) 555-555'
    )

    today = Date.today.strftime("%m/%d/%Y")
    expect(leed.date_text_sent).to eq(today)
  end
end
