def sign_in_and_play
  visit('/')
  fill_in 'Name1', with: 'Bob'
  fill_in 'Name2', with: 'Allen'
  click_button 'Submit'
end
