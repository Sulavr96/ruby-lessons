class Game


  def start()
    player=Players.new
    player.setName("Hari","Ram","shyam")

    puts player.getName.to_s
    card=Card.new
     puts card.setCard(3)

  end
  def assignCard()
    player=Players.new
    card=Card.new


    puts @ac=(player.getName)
    @ac.each do |name|
       name
    end
       @gc=card.setCard(3)

  end
  end


  class Card
    @@ranks =["ace",2,3,4,5,6,7,8,9,10,"jack","queen","king"]
    @@shapes = ["spade","heart","diamond","club"]


    def setCard(n)


        #@arr1=[@@ranks.sample,@@shapes.sample]


      #arr=[@@ranks.sample,@@shapes.sample]

      #while i<n
      #arr.collect do |array|
      #@cardarr= array
        #i=+1
      p

      for i in 0..n-1 do

        firstcard= "#{@@ranks.sample} of #{@@shapes.sample}"
        secondcard="#{@@ranks.sample} of #{@@shapes.sample}"
        thirdcard="#{@@ranks.sample} of #{@@shapes.sample}"
        f=[firstcard,secondcard,thirdcard]
        @b=Array.new
        @b=f.to_a
      end




        return @b.to_s

      end


        end


  class Players
    def setName(*name)
      @name=name


    end
    def getName()

      @a= @name.to_a
      return @a
    end


  end

game=Game.new
game.start











