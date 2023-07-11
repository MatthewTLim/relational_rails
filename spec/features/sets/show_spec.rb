require 'rails_helper'

RSpec.describe "Sets show" do
  before do
    @arabian_nights = Mtgset.create!(set_name: 'Arabian Nights', collection_number: 1, current_set: false)
    @antiquities = Mtgset.create!(set_name: 'Antiquities', collection_number: 2, current_set: false)
    @the_dark = Mtgset.create!(set_name: 'The Dark', collection_number: 4, current_set: false)
  end

  # [X] done
  # User Story 2, Parent Show
  describe "As a visitor" do
    describe "When I visit /parents/:id" do
      it "Then I see the parent with that id including the parent's attributes data from each column that is on the parent table)" do

        visit "/#{@arabian_nights.id}/cards"

        expect(page).to have_content(@arabian_nights.set_name)
        expect(page).to have_content(@arabian_nights.collection_number)
        expect(page).to have_content(@arabian_nights.current_set)

        save_and_open_page
      end
    end
  end
end