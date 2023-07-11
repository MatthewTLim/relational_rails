require 'rails_helper'

RSpec.describe "Sets index" do
  before do
    @arabian_nights = Mtgset.create!(set_name: 'Arabian Nights', collection_number: 1, current_set: false)
    @camel = Card.create!(name: 'Camel', type_id: 'Creature', color_id: 'White', rarity: "Common", set_number: 3, format_legality: true, mtgset: @arabian_nights)
    @giant_tortoise = Card.create!(name: 'Giant Tortoise', type_id: 'Creature', color_id: 'Blue', rarity: "Common", set_number: 15, format_legality: true, mtgset: @arabian_nights)
    @fishliver_oil = Card.create!(name: 'Fishliver Oil', type_id: 'Enchantment', color_id: 'Blue', rarity: "Common", set_number: 13, format_legality: true, mtgset: @arabian_nights)
    @oubliette = Card.create!(name: 'Oubliette', type_id: 'Enchament', color_id: 'Black', rarity: "Common", set_number: 31, format_legality: true, mtgset: @arabian_nights)
  end

# [X] done
# User Story 5, Parent Children Index

  describe "As a visitor" do
    describe "When I visit /parents/:parent_id/child_table_name" do
      it "Then I see each Card that is associated with that Set with each cards attributes
        (data from each column that is on the child table)" do

        visit "/mtgsets/#{@arabian_nights.id}/cards"


        expect(page).to have_content(@arabian_nights.set_name)

        [@camel, @giant_tortoise, @fishliver_oil, @oubliette].each do |card|
          expect(page).to have_content(card.name)
          expect(page).to have_content(card.type_id)
          expect(page).to have_content(card.color_id)
          expect(page).to have_content(card.rarity)
          expect(page).to have_content(card.set_number)
          expect(page).to have_content(card.format_legality)
        end

        save_and_open_page

      end
    end
  end
end
