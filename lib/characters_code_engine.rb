class CharactersCodeEngine

  CHARACTERS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split(//)

  def self.encode(x)
    return CHARACTERS[0] if x == 0
    res = ''
    base = CHARACTERS.length
    while x > 0
      res << CHARACTERS[x.modulo(base)]
      x /= base
    end
    res.reverse
  end

  def self.decode(y)
    res = 0
    base = CHARACTERS.length
    y.each_char { |c| res = res * base + CHARACTERS.index(c) }
    res
  end
end