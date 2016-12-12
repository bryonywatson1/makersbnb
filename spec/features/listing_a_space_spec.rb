feature 'Listing a space' do

  scenario 'user can add a new space with a name' do
    visit '/spaces'
    click_button('List a space')
    fill_in :name, with: 'London house'
    fill_in :description, with: 'Test description'
    fill_in :price, with: '100'
    click_button('List my space')
    expect(page).to have_content('London house')
    expect(page).to have_content('Test description')
    expect(page).to have_content('£100')
  end
end
