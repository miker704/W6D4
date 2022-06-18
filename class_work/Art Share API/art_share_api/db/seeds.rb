# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Artwork.destroy_all
    User.destroy_all
    ArtworkShares.destroy_all

    User.create([{username: 'user1_artist'},
                {username: 'user2_artist'},
                {username: 'user3_artist'},
                {username: 'user4'},
                {username: 'user5'}

])
    Artwork.create([{artist_id:1, image_url:'example_url', title:'art1'},
                    {artist_id:1, image_url:'example_url2', title:'art2'},
                    {artist_id:1, image_url:'example_url3', title:'art3'},
                    {artist_id:2, image_url:'example_url4', title:'art4'},
                    {artist_id:3, image_url:'example_url5', title:'art5'},
                    {artist_id:3, image_url:'example_url6', title:'art6'}
])
    ArtworkShares.create([{viewer_id: 4, artwork_id:1},
                        {viewer_id: 4, artwork_id:2},
                        {viewer_id: 4, artwork_id:3},
                        {viewer_id: 4, artwork_id:4},
                        {viewer_id: 4, artwork_id:5},
                        {viewer_id: 5, artwork_id:1},
                        {viewer_id: 5, artwork_id:2},
                        {viewer_id: 5, artwork_id:3},
                        {viewer_id: 5, artwork_id:4},
                        {viewer_id: 5, artwork_id:5},
])