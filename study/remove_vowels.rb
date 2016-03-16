VOWELS = ["a", "e", "i", "o", "u"]

def remove_vowels(strings)
  strings.map do |string|
    chars = string.split("")
    VOWELS.each { |v| chars.delete(v) }
    chars.join("")
  end
end

p remove_vowels(["green", "yellow", "black", "white"])