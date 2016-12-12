feature 'Requesting a space' do

  scenario 'user can request to book a space' do
    list_space
    click_button('View space')
    expect(page).to have_content('London house')
    expect(page).to have_content('Test description')
    expect(page).to have_content('£100')
    expect(page).to have_content('Request to book')
  end


end
