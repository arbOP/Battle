feature 'submit form name' do
  scenario 'user can fill in their name' do
    visit('/')
    fill_in 'Name1', with: 'Bob'
    fill_in 'Name2', with: 'Allen'
    click_on 'Submit'
    expect(page).to have_content 'Bob' && 'Allen'
  end
end
