
OPTIONS = {
  1 => :list_books,
  2 => :list_music_albums,
  3 => :list_games,
  4 => :list_genres,
  5 => :list_labels,
  6 => :list_authors,
  7 => :add_book,
  8 => :add_music_album,
  9 => :add_game,
  10 => :exit
}.freeze

def main
  loop do
    run
    option = gets.chomp.to_i
    option(option)
  end
end

main