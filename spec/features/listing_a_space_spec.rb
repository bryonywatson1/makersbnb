feature 'listing a space' do

  scenario 'user can add a new space with a name' do
    visit '/spaces'
    click_button('List a space')
    fill_in :name, with: 'London house'
    click_button('List my space')
    expect(page).to have_content('London house')
  end
end
