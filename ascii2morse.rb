alphabet = Hash["a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....", "i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---", "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-", "y" => "-.--", "z" => "--..", "1" => ".----", "2" => "..---", "3" => "...---", "4" => "....-", "5" => ".....", "6" => "-....", "7" => "--...", "8" => "---..", "9" => "----.", "0" => "-----"]

alphabet_inverted = alphabet.invert
args = ARGV

if args[0] == "-r"
  args.delete_at(0)
  args.each do |w|
    print alphabet_inverted[w]
  end
  print "\n"
else
  args.each do |w|
    w.each_char do |c|
      print alphabet[c] + " "
    end
    print "\n"
  end
  
end
