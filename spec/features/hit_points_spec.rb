feature 'view hit points' do
  scenario 'see player 2 hitpoints' do
    visit('/')
    fill_in 'Name1', with: 'Bob'
    fill_in 'Name2', with: 'Allen'
    click_button 'Submit'
    expect(page).to have_content 'Allen: 100hp'
  end
end
