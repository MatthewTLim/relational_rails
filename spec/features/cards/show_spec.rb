require 'rails_helper'

RSpec.describe "Cards show" do
  before do
    @arabian_nights = Mtgset.create!(set_name: 'Arabian Nights', collection_number: 1, current_set: false)
    @camel = Card.create!(name: 'Camel', type_id: 'Creature', color_id: 'White', rarity: "Common", set_number: 3, format_legality: true, mtgset: @arabian_nights)
    @giant_tortoise = Card.create!(name: 'Giant Tortoise', type_id: 'Creature', color_id: 'Blue', rarity: "Common", set_number: 15, format_legality: true, mtgset: @arabian_nights)
    @fishliver_oil = Card.create!(name: 'Fishliver Oil', type_id: 'Enchantment', color_id: 'Blue', rarity: "Common", set_number: 13, format_legality: true, mtgset: @arabian_nights)
    @oubliette = Card.create!(name: 'Oubliette', type_id: 'Enchament', color_id: 'Black', rarity: "Common", set_number: 31, format_legality: true, mtgset: @arabian_nights)
  end

# [ ] done
# User Story 4, Child Show

  describe "As a visitor" do
    describe "When I visit /child_table_name/:id" do
      it "Then I see the child with that id including the child's attributes
      (data from each column that is on the child table)" do

        visit "/#{@arabian_nights.id}/cards/#{@camel.id}"

        expect(page).to have_content(@camel.name)
        expect(page).to have_content(@camel.type_id)
        expect(page).to have_content(@camel.color_id)
        expect(page).to have_content(@camel.rarity)
        expect(page).to have_content(@camel.set_number)
        expect(page).to have_content(@camel.format_legality)

        save_and_open_page
      end
    end
  end
end