# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(username:"guest", password:123456)
User.create!(username:"josh", password:123456, profile_url:"http://orig15.deviantart.net/f5c4/f/2014/299/2/0/profile_picture_by_baby_duck_power-d846q9b.png")
User.create!(username:"markos", password:123456, profile_url:"http://media-cache-ak0.pinimg.com/736x/5a/c9/e5/5ac9e508fafb6909c729a675f98cb323.jpg")
User.create!(username:"laurie", password:123456, profile_url: "http://images.boomsbeat.com/data/images/full/3009/baby-panda_7-jpg.jpg")
User.create!(username:"nhat", password:123456, profile_url:"http://a.abcnews.com/images/Lifestyle/ap_baby_ligers_russian_zoo_3_ss-thg_130620_ssh.jpg")
Song.create!(user_id:1, title:"Song of Storms", artist:"Link", genre:"EDM", audio_url:"https://s3.amazonaws.com/nimbusplaylist/Zelda+-+Song+of+Storms+(Deon+Custom+Remix)_177364148_soundcloud.mp3",
image_url: "https://i.ytimg.com/vi/Lb6KUqMm_sA/hqdefault.jpg")
Song.create!(user_id:1, title:"Twinkle Twinkle", artist:"anon", genre:"nursery", audio_url:"https://s3.amazonaws.com/nimbusplaylist/Twinkle+Twinkle+Little+Star_90155278_soundcloud.mp3")
Like.create!(user_id:1, song_id:2)
Like.create!(user_id:2, song_id:2)
Like.create!(user_id:3, song_id:2)
Like.create!(user_id:5, song_id:2)
Song.create!(user_id:5, title:"Sunday Candy", artist:"chance the rapper", genre:"rap", audio_url:"https://s3.amazonaws.com/nimbusplaylist/Donnie+Trumpet+%26+The+Social+Experiment+-+Sunday+Candy_178525956_soundcloud.mp3", image_url:"https://images.rapgenius.com/fb19fc062c136caf7c030b4ee5aaa4cf.500x500x1.jpg")
Song.create!(user_id:2, title:"Black Submarines", artist:"The Black Keys", genre:"Rock", audio_url:"https://s3.amazonaws.com/nimbusplaylist/The+Black+Keys+-+Little+Black+Submarines_49652133_soundcloud.mp3",
image_url: "http://www.panicmanual.com/wp-content/uploads/2011/07/the_black_keys.jpg")
Playlist.create!(user_id:1, title:"Workout playlist", description:"so pumped!! ! ! !!!")
PlaylistSong.create!(playlist_id:1, song_id:2,ord:1)
PlaylistSong.create!(playlist_id:1, song_id:3,ord:2)
Song.create!(user_id:3, title:"Twist and Shout", artist:"The Beatles", genre:"Rock", audio_url:"https://s3.amazonaws.com/nimbusplaylist/The+Beatles+-+Twist+and+Shout+%5BBBC+Sessions%2C+Remastered%5D_165C2VGWqjA_youtube.mp3", image_url: "https://upload.wikimedia.org/wikipedia/en/6/61/BeatlesTwistanShoutSingle.jpg")
Song.create!(user_id:1, title:"Sweet Life", artist:"Frank Ocean", genre:"rap", audio_url:"https://s3.amazonaws.com/nimbusplaylist/Sweet+LIFE_52001640_soundcloud.mp3", image_url:"https://upload.wikimedia.org/wikipedia/en/2/28/Channel_ORANGE.jpg")
Song.create!(user_id:4, title:"Sir Duke", artist:"Stevie Wonder", genre:"R&B", audio_url:"https://s3.amazonaws.com/nimbusplaylist/Stevie+Wonder++You+can+feel+it+all+over_qtgF1w5LsZY_youtube.mp3",
image_url: "http://techdeephouse.com/uploads/Stevie%20Wonder%20Sir%20Duke%20Remix%20Stems%20FLAC.jpg")
Like.create!(user_id:1, song_id:3)
Song.create!(user_id:3, title:"Bohemian Rhapsody", artist:"Queen", genre:"Rock", audio_url:"https://s3.amazonaws.com/nimbusplaylist/Queen+-+Bohemian+Rhapsody+(Official+Video)_fJ9rUzIMcZQ_youtube.mp3", image_url: "http://img03.deviantart.net/31d4/i/2009/347/c/a/bohemian_rhapsody_by_nazurinshya.jpg")
Playlist.create!(user_id:1, title:"Relaxing afternoon", description:" - v - ")
PlaylistSong.create!(playlist_id:2, song_id:7,ord:1)
PlaylistSong.create!(playlist_id:2, song_id:6,ord:2)
PlaylistSong.create!(playlist_id:2, song_id:3,ord:3)
Song.create!(user_id:1, title:"A B C", artist:"anon", genre:"nursery", audio_url:"https://s3.amazonaws.com/nimbusplaylist/Phonics+Song+2_BELlZKpi1Zs_youtube.mp3", image_url:"http://charliepage.com/wp-content/uploads/2014/08/The-ABC-Marketing-Method-by-Charlie-Page-e1408118876190.jpg")
Like.create!(user_id:3, song_id:3)
Like.create!(user_id:5, song_id:3)
Like.create!(user_id:1, song_id:1)
Like.create!(user_id:3, song_id:1)
Like.create!(user_id:1, song_id:6)
Like.create!(user_id:2, song_id:6)
Like.create!(user_id:3, song_id:6)
Like.create!(user_id:5, song_id:4)
Like.create!(user_id:1, song_id:4)
Like.create!(user_id:3, song_id:4)
Like.create!(user_id:2, song_id:8)
Like.create!(user_id:3, song_id:8)
Playlist.create!(user_id:3, title:"Dinnertime melodies", description:"mmhmmmhhmmmm")
PlaylistSong.create!(playlist_id:3, song_id:1,ord:1)
PlaylistSong.create!(playlist_id:3, song_id:5,ord:2)
PlaylistSong.create!(playlist_id:3, song_id:8,ord:3)
Playlist.create!(user_id:4, title:"Introspective songs", description:"deep")
PlaylistSong.create!(playlist_id:4, song_id:4,ord:1)
PlaylistSong.create!(playlist_id:4, song_id:8,ord:2)
PlaylistSong.create!(playlist_id:4, song_id:2,ord:3)
Playlist.create!(user_id:2, title:"MishMash", description:"i like to shake things up!! !")
PlaylistSong.create!(playlist_id:5, song_id:1,ord:1)
PlaylistSong.create!(playlist_id:5, song_id:3,ord:2)
PlaylistSong.create!(playlist_id:5, song_id:5,ord:3)
PlaylistSong.create!(playlist_id:5, song_id:6,ord:4)
PlaylistSong.create!(playlist_id:5, song_id:7,ord:5)
Playlist.create!(user_id:5, title:"Fav Song", description:"i'm not kidding...")
PlaylistSong.create!(playlist_id:6, song_id:2,ord:1)
