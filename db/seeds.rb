# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Events extension
Refinery::Events::Engine.load_seed

# Added by Refinery CMS Services extension
Refinery::Services::Engine.load_seed

# Added by Refinery CMS Riders extension
Refinery::Riders::Engine.load_seed

# Added by Refinery CMS RaceResults extension
Refinery::RaceResults::Engine.load_seed

# Added by Refinery CMS Categories extension
Refinery::Categories::Engine.load_seed
