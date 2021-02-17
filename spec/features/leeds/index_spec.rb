require 'rails_helper'

RSpec.describe 'Leeds Index Page' do
  it 'should see title, add button and empty table' do
    visit root_path
    expect(page).to have_content('Pingsurance')
    expect(page).to have_link('Add New Lead')

    within(".table") do
      expect(page).to have_selector('th', count: 3)
      expect(page).to have_content('Name')
      expect(page).to have_content('Number')
      expect(page).to have_content('Date Texted')
      expect(page).to_not have_css('#tr')
    end
  end
end
