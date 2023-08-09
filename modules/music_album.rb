require_relative 'save_load_music_genre'

module Music
  include SaveData
  include LoadData

  def display_music_albums
    puts 'List of Albums'
    @music_album.each do |album|
      puts "Album Name: #{album.album_name} by #{album.author}"
      puts "Publish Date: #{album.publish_date}"
      puts "On Spotify: #{album.on_spotify}"
      puts "Genres: #{album.genres.map(&:name).join(', ')}"
      puts
    end
  end