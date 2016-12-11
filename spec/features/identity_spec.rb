require 'rails_helper.rb'

feature 'Identity' do

  scenario 'User can add their identity' do
    # given_i_am_on_the_homepage
    visit root_path

    # and I have added a new vision
    click_link "Add Your Vision", match: :first
    fill_in 'Describe Your Ideal World', with: "I want all humans to be happy"
    click_button 'Publish'

    # when I set some identities
    fill_in "Political Affiliation", with: "The Party"
    fill_in "Religious Affiliation", with: "The Religion"
    fill_in "Where are you from?", with: "Germany"
    click_button 'Submit Identities'

    # then_i_should_be_redirected_to_my_vision
    expect(page).to have_current_path(vision_path(Vision.last))
    expect(page).to have_content("I want all humans to be happy")

    # and my identities should be shown
    expect(page).to have_content("Germany")
  end

end
