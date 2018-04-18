class Game


  def start()
    player=Players.new
    player.setName("Hari","Ram","shyam")

    playerArray=(player.getName)
     numOfPlayers=playerArray.count()
     card=Card.new
     cardArray=card.setCard(numOfPlayers)

    playerArray.each do|player|
      cardArray.each do|card|
          a=player
        b=card
        puts "#{player} gets #{card}"
      end
    end
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


      distributionArray=Array.new

        firstcard= "#{@@ranks.sample} of #{@@shapes.sample}"
        secondcard="#{@@ranks.sample} of #{@@shapes.sample}"
        thirdcard="#{@@ranks.sample} of #{@@shapes.sample}"
        cardArray=[firstcard,secondcard,thirdcard]

        distributionArray.push(cardArray)

        return distributionArray

      end


        end


  class Players
    def setName(*name)
      @name=name


    end
    def getName()

      playerName= @name.to_a
      return playerName
    end


  end

game=Game.new
game.start











