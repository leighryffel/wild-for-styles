puts "🌱 Seeding music..."

# Seed your database here
Album.create(title: "Harry Styles", rating: "3", released_in: 2017, genre: "Soft rock", album_art: "https://upload.wikimedia.org/wikipedia/en/a/a0/HarryStyles-albumcover.png")
Album.create(title: "Fine Line", rating: "5", released_in: 2019, genre: "Pop rock", album_art: "https://upload.wikimedia.org/wikipedia/en/b/b1/Harry_Styles_-_Fine_Line.png")
Album.create(title: "Harry's House", rating: "4", released_in: 2022, genre: "Pop funk", album_art: "https://upload.wikimedia.org/wikipedia/en/d/d5/Harry_Styles_-_Harry%27s_House.png")

Comment.create(comment: "This was a great debut album, but could have shown more of Harry's vocal strength.", album_id: 1)
Comment.create(comment: "I'll listen to anything Harry puts out! FANTASTIC!", album_id: 1)
Comment.create(comment: "A phenomenal sophomore album - by far his best to date.", album_id: 2)
Comment.create(comment: "Emotional, powerful, and groundbreaking! Way to go, Hazza!", album_id: 2)
Comment.create(comment: "Harry shows off his growth and new sound on this record. It's cohesive from start to finish!", album_id: 3)
Comment.create(comment: "Full of disco bangers and sad girl bops. A front-to-back listen for sure.", album_id: 3)

Song.create(title: "Meet Me in the Hallway", album_id: 1, length: 227, likes: 1)
Song.create(title: "Sign of the Times", album_id: 1, length: 340, likes: 4)
Song.create(title: "Carolina", album_id: 1, length: 189, likes: 2)
Song.create(title: "Two Ghosts", album_id: 1, length: 229, likes: 3)
Song.create(title: "Sweet Creature", album_id: 1, length: 224, likes: 3)
Song.create(title: "Only Angel", album_id: 1, length: 291, likes: 1)
Song.create(title: "Kiwi", album_id: 1, length: 176, likes: 3)
Song.create(title: "Every Since New York", album_id: 1, length: 253, likes: 1)
Song.create(title: "Woman", album_id: 1, length: 278, likes: 2)
Song.create(title: "From the Dining Table", album_id: 1, length: 211, likes: 1)

Song.create(title: "Golden", album_id: 2, length: 208, likes: 3)
Song.create(title: "Watermelon Sugar", album_id: 2, length: 173, likes: 3)
Song.create(title: "Adore You", album_id: 2, length: 207, likes: 7)
Song.create(title: "Lights Up", album_id: 2, length: 172, likes: 2)
Song.create(title: "Cherry", album_id: 2, length: 259, likes: 5)
Song.create(title: "Falling", album_id: 2, length: 240, likes: 5)
Song.create(title: "To Be So Lonely", album_id: 2, length: 192, likes: 2)
Song.create(title: "She", album_id: 2, length: 362, likes: 3)
Song.create(title: "Sunflower, Vol. 6", album_id: 2, length: 221, likes: 3)
Song.create(title: "Canyon Moon", album_id: 2, length: 189, likes: 3)
Song.create(title: "Treat People With Kindness", album_id: 2, length: 297, likes: 2)
Song.create(title: "Fine Line", album_id: 2, length: 377, likes: 6)

Song.create(title: "Music for a Sushi Restaurant", album_id: 3, length: 194, likes: 6)
Song.create(title: "Late Night Talking", album_id: 3, length: 178, likes: 4)
Song.create(title: "Grapejuice", album_id: 3, length: 192, likes: 3)
Song.create(title: "As It Was", album_id: 3, length: 167, likes: 3)
Song.create(title: "Daylight", album_id: 3, length: 165, likes: 4)
Song.create(title: "Little Freak", album_id: 3, length: 203, likes: 4)
Song.create(title: "Matilda", album_id: 3, length: 245, likes: 6)
Song.create(title: "Cinema", album_id: 3, length: 243, likes: 6)
Song.create(title: "Daydreaming", album_id: 3, length: 187, likes: 3)
Song.create(title: "Keep Driving", album_id: 3, length: 199, likes: 4)
Song.create(title: "Satellite", album_id: 3, length: 217, likes: 7)
Song.create(title: "Boyfriends", album_id: 3, length: 192, likes: 5)
Song.create(title: "Love of My Life", album_id: 3, length: 191, likes: 2)

puts "✅ Done seeding!"