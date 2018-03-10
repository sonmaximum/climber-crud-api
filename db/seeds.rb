# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.create(
  [
    {
      name: 'Brooklyn Boulders Somerville',
      address: '12A Tyler St, Somerville, MA 02143',
      outdoors: false,
      comments: 'none'
    },
    {
      name: 'Central Rock Gym Watertown',
      address: '74 Acton St, Watertown, MA 02472',
      outdoors: false,
      comments: 'none'
    },
    {
      name: 'Central Rock Gym Alewife',
      address: '127 Smith Pl, Cambridge, MA 02138',
      outdoors: false,
      comments: 'none'
    },
    {
      name: 'Quincy Quarries',
      address: 'Ricciuti Dr, Quincy, MA 02169',
      outdoors: true,
      comments: 'none'
    },
    {
      name: 'Shawangunk Ridge (The Gunks)',
      address: 'New Paltz, New York',
      outdoors: true,
      comments: 'none'
    }
  ]
)
