require 'rails_helper'

RSpec.describe "Sets index" do
  before do
    @arabian_nights = Mtgset.create!(set_name: 'Arabian Nights', collection_number: 1, current_set: false)
    @antiquities = Mtgset.create!(set_name: 'Antiquities', collection_number: 2, current_set: false)
    @the_dark = Mtgset.create!(set_name: 'The Dark', collection_number: 4, current_set: false)
  end

  # [X] done
  # User Story 1, Parent Index
  describe "For each parent table" do
    describe "As a visitor" do
      describe "When I visit /sets" do
        it "Then I see the name of each Mtgset record in the system" do


          visit "/"

          expect(page).to have_content(@arabian_nights.set_name)
          save_and_open_page
        end
      end
    end
  end



