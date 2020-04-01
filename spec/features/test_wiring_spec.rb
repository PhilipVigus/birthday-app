feature 'tests are wired up correctly' do
  scenario 'homepage has correct message on it' do
    visit('/')
    expect(page).to have_content('App working')
  end
end