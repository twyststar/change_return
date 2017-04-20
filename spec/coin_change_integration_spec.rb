require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_execptions, false)


describe('coin change path', {:type => :feature}) do
  it ('will tell you the correct amount of each coin for change') do
  visit('/')
  fill_in('name', :with => '50')
  click_button('Click')
  expect(page).to have_content(2)
  end
end
