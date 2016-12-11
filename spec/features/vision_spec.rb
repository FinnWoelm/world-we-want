require 'rails_helper.rb'

feature 'Vision' do

  scenario 'User can add a vision' do
    # given_i_am_on_the_homepage
    visit root_path

    # when_i_add_a_new_vision
    click_link "Add Your Vision", match: :first
    fill_in 'Describe Your Ideal World', with: "I want all humans to be happy"

    # and_choose_my_favorite_color 'Light blue'
    select('Light blue', from: 'vision_color')
    click_button 'Publish'

    # then_i_should_be_redirected_to_my_vision
    expect(page).to have_current_path(vision_path(Vision.last))
    expect(page).to have_content("I want all humans to be happy")

    # and_the_color_scheme_of_the_page_should_be 'light-blue'
    expect(page).to have_css('body.color-scheme.primary-light-blue')
  end

end
