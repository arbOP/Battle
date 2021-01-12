feature 'view hit points' do
  scenario 'see player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Allen: 100hp'
  end
end
