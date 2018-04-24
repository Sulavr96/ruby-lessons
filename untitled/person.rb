class MovieArtist

  def initialize name,gender
    @name = name
    @gender = gender
    @movies = []
  end

  def skill
    puts "no skill"
  end

  def sign (movie, share)
    earning = movie.artist_earning share
    puts earning
    @movies.push ({movie: movie, earning: earning , share: share})
  end

  def total_earnings
    sum = 0
    @movies.each do |movie_hash|
       sum += movie_hash[:earning]
    end
    sum
  end

end

class Actor < MovieArtist
  def skill
    puts "acting"
  end
end

class Director < MovieArtist
  def skill
    puts "direction"
  end
end

class ShareDivision
attr_reader :actor_share
  def initialize actor_share, actress_share, producer_share, director_share
    @actor_share=actor_share
    @actress_share=actress_share
    @producer_share=producer_share
    @director_share=director_share
  end
end

class Movie
  def initialize movie_name,actor,actress,director,producer,budget,share_division
    @movie_name=movie_name
    @actor=actor
    @actress=actress
    @director=director
    @producer=producer
    @budget=budget
    @share_division = share_division

    # sign_artists
  end
  def share_division
    @share_division
  end

  def artist_earning share

    share.to_f/100*@budget

  end

  def sign_artists
    @actor.sign self
  end


end

actor_rajesh = Actor.new "rajesh", 'male'
actress_karishma= Actor.new "karishma",'female'

director_nischal=Director.new "Nischal",'male'

producer_bhuwan=MovieArtist.new "Bhuwan", 'male'

sathi_share = ShareDivision.new 60, 10, 10, 20
movie_sathi = Movie.new 'Sathi', actor_rajesh, actress_karishma, director_nischal, producer_bhuwan, 30_00_000, sathi_share
puts movie_sathi.share_division
actor_rajesh.sign movie_sathi, movie_sathi.share_division.actor_share
p actor_rajesh.total_earnings