feature 'Filtering spaces' do

  scenario 'can view properties which are available on filter date' do
    sign_up
    add_space
    add_space(name: 'Test house', description: 'Test house description', price: '50', available_from: '16/12/15', available_to: '16/12/16')
    fill_in 'filter_date', with: '16/12/16'
    click_button('Find spaces')
    expect(page).to have_content('Test house')
    expect(page).not_to have_content('London house')
  end

  scenario 'shows an empty list if no properties available on filter date' do
    sign_up
    add_space
    add_space(name: 'Test house', description: 'Test house description', price: '50', available_from: '16/12/15', available_to: '16/12/16')
    fill_in 'filter_date', with: '17/12/16'
    click_button('Find spaces')
    expect(page).not_to have_content('Test house')
    expect(page).not_to have_content('London house')
  end

end
