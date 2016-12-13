feature 'Requesting a space' do

  scenario 'user can get to request screen' do
    add_space
    click_button('View space')
    expect(page).to have_content('London house')
    expect(page).to have_content('Test description')
    expect(page).to have_content('£100')
    expect(page).to have_content('Request to book')
  end

  scenario 'user can request to book a space' do
    add_space
    click_button('View space')
    expect(page).to have_content('London house')
    expect(page).to have_content('Test description')
    expect(page).to have_content('£100')
  end


end
