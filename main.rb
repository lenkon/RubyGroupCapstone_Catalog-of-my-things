def main
  loop do
    run
    option = gets.chomp.to_i
    option(option)
  end
end

main