# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'characters_code_engine.rb'

page = Page.create(:url => "http://www.a.com", :shortenUrl => CharactersCodeEngine.encode((Page.count > 0 ? Page.last.id : 0) + 1))

