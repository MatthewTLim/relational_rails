require 'rails_helper'

RSpec.describe "navigational link presence" do
  before do
    @arabian_nights = Mtgset.create!(set_name: 'Arabian Nights', collection_number: 1, current_set: false)
    @camel = Card.create!(name: 'Camel', type_id: 'Creature', color_id: 'White', rarity: "Common", set_number: 3, format_legality: true, mtgset: @arabian_nights)
    @giant_tortoise = Card.create!(name: 'Giant Tortoise', type_id: 'Creature', color_id: 'Blue', rarity: "Common", set_number: 15, format_legality: true, mtgset: @arabian_nights)
    @fishliver_oil = Card.create!(name: 'Fishliver Oil', type_id: 'Enchantment', color_id: 'Blue', rarity: "Common", set_number: 13, format_legality: true, mtgset: @arabian_nights)
    @oubliette = Card.create!(name: 'Oubliette', type_id: 'Enchament', color_id: 'Black', rarity: "Common", set_number: 31, format_legality: true, mtgset: @arabian_nights)
  end

  # [X] done
  # User Story 8, Child Index Link
  describe "As a visitor" do
    describe "When I visit any page on the site" do
      it "Then I see a link at the top of the page that takes me to the Child Index" do

        visit "/mtgsets"
        expect(page).to have_link("Cards Index")

        visit "/mtgsets/#{@arabian_nights.id}"
        expect(page).to have_link("Cards Index")

        visit'/cards'
        expect(page).to have_link("Cards Index")

        visit "/mtgsets/#{@arabian_nights.id}/cards/#{@camel.id}"
        expect(page).to have_link("Cards Index")

        visit "/mtgsets/#{@arabian_nights.id}/cards"
        expect(page).to have_link("Cards Index")
      end
    end
  end

# [X] done
# User Story 9, Parent Index Link
  describe "As a visitor" do
    describe "When I visit any page on the site" do
      it "Then I see a link at the top of the page that takes me to the Parent Index" do

        visit "/mtgsets"
        expect(page).to have_link("Set Index")

        visit "/mtgsets/#{@arabian_nights.id}"
        expect(page).to have_link("Set Index")

        visit'/cards'
        expect(page).to have_link("Set Index")

        visit "/mtgsets/#{@arabian_nights.id}/cards/#{@camel.id}"
        expect(page).to have_link("Set Index")

        visit "/mtgsets/#{@arabian_nights.id}/cards"
        expect(page).to have_link("Set Index")
      end
    end
  end
  
  # [X] done
  # User Story 10, Parent Child Index Link
  describe "As a visitor" do
    describe "When I visit a parent show page ('/parents/:id')" do
      it "Then I see a link to take me to that parent's `child_table_name` page ('/parents/:id/child_table_name')" do

        visit "/mtgsets/#{@arabian_nights.id}"

        expect(page).to have_link("View Cards")
      end
    end
  end
end