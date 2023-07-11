# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@arabian_nights = Mtgset.create!(set_name: 'Arabian Nights', collection_number: 1, current_set: false)
@urzas_saga = Mtgset.create!(set_name: "Urza's Saga", collection_number: 15, current_set: false)
@eldritch_moon = Mtgset.create!(set_name: 'Eldritch Moon', collection_number: 50, current_set: false)
@ixalan = Mtgset.create!(set_name: 'Ixalan', collection_number: 55, current_set: true)

@camel = Card.create!(name: 'Camel', type_id: 'Creature', color_id: 'White', rarity: "Common", set_number: 3, format_legality: true, mtgset: @arabian_nights)
@giant_tortoise = Card.create!(name: 'Giant Tortoise', type_id: 'Creature', color_id: 'Blue', rarity: "Common", set_number: 15, format_legality: true, mtgset: @arabian_nights)
@fishliver_oil = Card.create!(name: 'Fishliver Oil', type_id: 'Enchantment', color_id: 'Blue', rarity: "Common", set_number: 13, format_legality: true, mtgset: @arabian_nights)
@oubliette = Card.create!(name: 'Oubliette', type_id: 'Enchament', color_id: 'Black', rarity: "Common", set_number: 31, format_legality: true, mtgset: @arabian_nights)

@rewind = Card.create!(name: 'Rewind', type_id: 'Interrupt', color_id: 'Blue', rarity: "Common", set_number: 15, format_legality: true, mtgset: @urzas_saga)
@witch_engine = Card.create!(name: 'Witch Engine', type_id: 'Creature', color_id: 'Black', rarity: "Rare", set_number: 82, format_legality: false, mtgset: @urzas_saga)
@fire_ants = Card.create!(name: 'Fire Ants', type_id: 'Creature', color_id: 'Red', rarity: "Uncommon", set_number: 187, format_legality: false, mtgset: @urzas_saga)
@fertile_ground= Card.create!(name: 'Fertile Ground', type_id: 'Enchantment', color_id: 'Green', rarity: "Common", set_number: 252, format_legality: true, mtgset: @urzas_saga)

@providence = Card.create!(name: 'Providence', type_id: 'Sorcery', color_id: 'White', rarity: "Rare", set_number: 37, format_legality: false, mtgset: @eldritch_moon)
@convolute = Card.create!(name: 'Convolute', type_id: 'Instant', color_id: 'Blue', rarity: "Common", set_number: 53, format_legality: true, mtgset: @eldritch_moon)
@murder = Card.create!(name: 'Murder', type_id: 'Instant', color_id: 'Black', rarity: "Uncommon", set_number: 97, format_legality: false, mtgset: @eldritch_moon)
@make_mischief = Card.create!(name: 'Make Mischief', type_id: 'Sorcery', color_id: 'Red', rarity: "Common", set_number: 135, format_legality: true, mtgset: @eldritch_moon)

@demystify = Card.create!(name: 'Demystify', type_id: 'Instant', color_id: 'White', rarity: "Common", set_number: 8, format_legality: true, mtgset: @ixalan)
@cancel = Card.create!(name: 'Cancel', type_id: 'Instant', color_id: 'Blue', rarity: "Common", set_number: 47, format_legality: true, mtgset: @ixalan)
@duress = Card.create!(name: 'Duress', type_id: 'Sorcery', color_id: 'Black', rarity: "Mythical", set_number: 129, format_legality: false, mtgset: @ixalan)
@rile = Card.create!(name: 'Rile', type_id: 'Sorcery', color_id: 'Red', rarity: "Rare", set_number: 17, format_legality: false, mtgset: @ixalan)