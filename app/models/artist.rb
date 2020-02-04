class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end.uniq
  end

  def self.total_experience
    x = all.map { |artist| artist.years_experience }
    return x.sum
  end

  def self.most_prolific
    tally = {}
    self.all.each { |artist|
      tally[artist] = (artist.paintings.length.to_f) / (artist.years_experience.to_f)
    }
    tally.each { |k, v| return k if v == tally.values.max }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
