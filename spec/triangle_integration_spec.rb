require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('triangle test page', {:type => :feature}) do
  it("displays 'Welcome to the triangle tester!' on the root page...") do
    visit('/')
    expect(page).to have_content('Welcome to the triangle tester!')
  end

  it("displays 'not a triangle' if any two sides add up to less than the third side") do
    visit('/')
    fill_in('side_a', :with => '44')
    fill_in('side_b', :with => '2')
    fill_in('side_c', :with => '1')
    click_button('Enter')
    # save_and_open_page
    expect(page).to have_content('not a triangle')
  end

  it("displays 'scalene' if no sides are equal") do
    visit('/')
    fill_in('side_a', :with => "5")
    fill_in('side_b', :with => "4")
    fill_in('side_c', :with => "3")
    click_button('Enter')
    #save_and_open_page
    expect(page).to have_content('scalene')
  end

end
