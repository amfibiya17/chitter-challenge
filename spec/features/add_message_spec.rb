feature "Add message" do
  scenario 'add message (peep) to chitter' do
    visit('/signup')
    expect(page).to have_content "Chitter"
    expect(page).to have_content "Please sign up"
    fill_in :user_name, with: "amfibiya17"
    fill_in :password, with: "12345678"
    expect(page).to have_button 'Sign up'
    click_button 'Sign up'
    visit('/login')
    expect(page).to have_content "Please login"
    fill_in :user_name, with: "amfibiya17"
    fill_in :password, with: "12345678"
    expect(page).to have_button 'Login'
    click_button 'Login'
    visit('/message')
    expect(page).to have_content "Chitter"
    fill_in :text, with: "My bla bla bla text"
    expect(page).to have_button 'Submit'
    click_button 'Submit'
  end
end
