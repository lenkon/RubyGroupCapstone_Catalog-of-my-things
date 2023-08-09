require 'json'

module SaveData
  def save_music(musics)
    save_music = []
    musics.each do |music|
      genres = music.genres.map(&:name)
      save_music << {
        'publish_date' => music.publish_date,
        'on_spotify' => music.on_spotify,
        'author' => music.author,
        'album_name' => music.album_name,
        'genres' => genres
      }
    end

    File.write('./data/musics.json', JSON.pretty_generate(save_music))
  end