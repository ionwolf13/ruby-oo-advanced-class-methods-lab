class Song
  attr_accessor :name, :artist_name
  @@all = []

    def self.create
      song1 = self.new
      song1.save
      if self.all.include?(song1)
              return song1
      end
    end

    def self.new_by_name(name)
      song = Song.new(name)
      song.name = name
      if self.all.include?(song)
        return song
      end
    end

    def self.create_by_name
      @name = name
      song = Song.new(name)
      song.save
      if self.all.include?(song)
        return song
      end
    end

    def self.find_by_name

    end

    def self.find_or_create_by_name

    end

    def self.alphabetical
        array = self.all.map do |song| 
          song.name
        end
        array.sort
    end

    def self.new_from_filename

    end

    def self.create_from_filename

    end

    def self.destroy_all
      self.all.clear()
    end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end



end
