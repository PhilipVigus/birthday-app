feature 'displays the form for the user to enter their birthday into' do
  before do
    visit('/')
  end
  scenario 'homepage has correct message on it' do
    expect(page).to have_content('Hello there!')
  end

  scenario 'homepage has a field to enter your name' do
    expect(page).to have_field('name')
  end

  scenario 'homepage has a field to enter your birth day' do
    expect(page).to have_field('day')
  end

  scenario 'homepage has a field to enter your birth month' do
    expect(page).to have_field('month')
  end

  scenario 'homepage has a go button' do
    expect(page).to have_button('Go!')
  end
end