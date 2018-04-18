class Card
  @@ranks =["ace",2,3,4,5,6,7,8,9,10,"jack","queen","king"]
  @@shapes = ["spade","heart","diamond","club"]

  def distribute_cards(n)

    for n in 1..n do

         firstcard= "#{@@ranks.sample} of #{@@shapes.sample}"
         secondcard="#{@@ranks.sample} of #{@@shapes.sample}"
         thirdcard="#{@@ranks.sample} of #{@@shapes.sample}"

        [firstcard,secondcard,thirdcard].each{|number|
        puts number
        }


      end
    end



  class Player

    def initialize(name,cards)
      @name=name
      @cards=cards
    end
    def viewCards()

end

  end
  card =Card.new()
  card.distribute_cards(3)
  puts number

  player1=Player.new("ram",@arr)
  player2=Player.new("shyam",@arr)
  player3=Player.new("hari",@arr)

end





