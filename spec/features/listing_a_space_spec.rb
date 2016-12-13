feature 'Listing a space' do

  scenario 'user can add a new space with a name' do
    list_space
    expect(page).to have_content('London house')
    expect(page).to have_content('Test description')
    expect(page).to have_content('£100')
    expect(page).to have_content('Owner: example@email.com')
  end
end
