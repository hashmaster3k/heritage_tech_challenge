require 'rails_helper'

RSpec.describe 'leeds/_new.html.erb', type: :view do
  before :each do
    render
  end

  it 'should display title and form with buttons' do
    expect(rendered).to have_content('Add New Leed')
    expect(rendered).to have_content('First Name')
    expect(rendered).to have_selector("input[placeholder='Tony']")
    expect(rendered).to have_content('Last Name')
    expect(rendered).to have_selector("input[placeholder='Bologna']")
    expect(rendered).to have_content('Phone Number')
    expect(rendered).to have_selector("input[placeholder='(555) 123-4567']")
    expect(rendered).to have_content('Text Message')
    expect(rendered).to have_selector("textarea[placeholder='Hi! Check out our insurance at ...']")
    expect(rendered).to have_button("Create & Send")
    expect(rendered).to have_button("Cancel")
  end
end
