require './lib/birthday_checker'

describe Checker do
  # https://mensfeld.pl/2014/06/testing-sinatra-application-methods-in-isolation-with-rspec/

  it 'allows you to check a birthday' do
    expect(subject).to respond_to(:is_birthday_today?).with(2).arguments
  end
end
