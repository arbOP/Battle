feature 'submit form name' do
  scenario 'user can fill in their name' do
    sign_in_and_play
    expect(page).to have_content 'Bob' && 'Allen'
  end
end
