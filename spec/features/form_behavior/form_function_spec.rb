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
# User Story 11, Parent Creation

  describe "As a visitor" do
    describe "When I visit the Parent Index page" do
      it "Then I see a link to create a new Parent record, New Parent" do

        visit "/mtgsets"

        expect(page).to have_link("Add Set")
      end
    end
  end

  describe "When I click this link" do
    it "Then I am taken to /parents/new where I see a form for a new parent record" do

      visit "/mtgsets"
      click_link "Add Set"

      expect(page).to have_button("Create Set")
    end
  end

  describe "When I fill out the form with a new parent's attributes:" do
    describe "And I click the button Create Parent to submit the form" do
      describe "Then a POST request is sent to the /parents route, a new parent record is created," do
        it "and I am redirected to the Parent Index page where I see the new Parent displayed." do

          visit "/mtgsets/new"

          fill_in "Set Name", with: "Test Set"
          fill_in "Collection Number", with: 123
          click_button "Create Set"

          expect(current_path).to eq("/mtgsets")
          expect(page).to have_content("Test Set")
        end
      end
    end
  end

  # [X] done
  # User Story 12, Parent Update
  describe "As a visitor" do
    describe "When I visit a parent show page" do
      it "Then I see a link to update the parent Update Parent" do

        visit "/mtgsets/#{@arabian_nights.id}"

        expect(page).to have_link("Edit Set")
      end
    end
  end

  describe "When I click the link Update Parent" do
    it "Then I am taken to '/parents/:id/edit' where I see a form to edit the parent's attributes:" do
      visit "/mtgsets/#{@arabian_nights.id}"

      click_link "Edit Set"

      expect(current_path).to eq("/mtgsets/#{@arabian_nights.id}/edit")
      expect(page).to have_selector("form")
    end
  end

  describe "When I fill out the form with updated information" do
    describe "And I click the button to submit the form" do
      describe "Then a `PATCH` request is sent to '/parents/:id', the parent's info is updated," do
        it "and I am redirected to the Parent's Show page where I see the parent's updated info" do

          visit "mtgsets/#{@arabian_nights.id}/edit"

          fill_in "Set Name", with: "Test Set Edited"
          fill_in "Collection Number", with: 123456

          click_button "Update Set"

          expect(current_path).to eq("/mtgsets/#{@arabian_nights.id}")
          expect(page).to have_content("Test Set Edited")
          expect(page).to have_content(123456)
        end
      end
    end
  end


# [ ] done
# User Story 13, Parent Child Creation
  describe "As a visitor" do
    describe "When I visit a Parent Children Index page" do
      it "Then I see a link to add a new adoptable child for that parent Create Child" do
        visit "/mtgsets/#{@arabian_nights.id}/cards"

        expect(page).to have_link("Add Card")
      end
    end
  end

  describe "When I click the link" do
    it "I am taken to /parents/:parent_id/child_table_name/new where I see a form to add a new adoptable child" do
      visit "/mtgsets/#{@arabian_nights.id}/cards"

      click_link "Add Card"

      expect(current_path).to eq("/mtgsets/#{@arabian_nights.id}/cards/new")
      expect(page).to have_selector("Form")
    end
  end

  describe "When I fill in the form with the child's attributes:" do
    describe "And I click the button Create Child" do
      describe "Then a POST request is sent to /parents/:parent_id/child_table_name, a new child object/row is created for that parent," do
        it "and I am redirected to the Parent Childs Index page where I can see the new child listed" do

        end
      end
    end
  end

#   # [ ] done
#   # User Story 14, Child Update
#   describe "As a visitor" do
#     describe "When I visit a Child Show page" do
#       it "Then I see a link to update that Child Update Child" do
#       end
#     end
#   end

#   describe "When I click the link"
#     it "I am taken to /child_table_name/:id/edit where I see a form to edit the child's attributes:" do
#     end
#   end

#   describe "When I click the button to submit the form Update Child" do
#     describe "Then a PATCH request is sent to /child_table_name/:id, the child's data is updated," do
#       it "and I am redirected to the Child Show page where I see the Child's updated information" do

#       end
#     end
#   end

#   # [ ] done
#   # User Story 15, Child Index only shows `true` Records
#   describe "As a visitor" do
#     describe "When I visit the child index" do
#       it "Then I only see records where the boolean column is true" do

#       end
#     end
#   end

#   # [ ] done
#   # User Story 16, Sort Parent's Children in Alphabetical Order by name
#   describe "As a visitor" do
#     describe "When I visit the Parent's children Index Page" do
#       describe "Then I see a link to sort children in alphabetical order" do
#         describe "When I click on the link" do
#           it "I'm taken back to the Parent's children Index Page where I see all of the parent's children in alphabetical order" do

#           end
#         end
#       end
#     end
#   end

#   # [ ] done
#   # User Story 17, Parent Update From Parent Index Page
#   describe "As a visitor" do
#     describe "When I visit the parent index page" do
#       describe "Next to every parent, I see a link to edit that parent's info" do
#         describe "When I click the link" do
#           it "I should be taken to that parent's edit page where I can update its information just like in User Story 12" do

#           end
#         end
#       end
#     end
#   end


#   # [ ] done
#   # User Story 18, Child Update From Childs Index Page
#   describe "As a visitor"
#     describe "When I visit the `child_table_name` index page or a parent child_table_name index page" do
#       describe "Next to every child, I see a link to edit that child's info" do
#         describe "When I click the link" do
#           it "I should be taken to that child_table_name edit page where I can update its information just like in User Story 14" do

#           end
#         end
#       end
#     end
#   end
end
