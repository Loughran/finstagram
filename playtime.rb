cards = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]

def card_value(card)
 if card == "J"
  return 10
 elsif card == "Q"
  return 10
 elsif card == "K"
  return 10
 elsif card == "A"
  puts "Do you want A to be 1 or 11?"
  ace = gets.chomp
  if ace == "11"
   return 11
  elsif ace == "1"
   return 1
  else puts "ERROR!"
  end
 else
  return card
 end
end

def dealer_card_value(card)
 if card == "J"
  return 10
 elsif card == "Q"
  return 10
 elsif card == "K"
  return 10
 elsif card == "A"
  return "A"
 else
  return card
 end
end

puts "Do you want to play blackjack? (y/n)"
play = gets.chomp

if play == "y"
 card1 = cards[rand(13)]
 card2 = cards[rand(13)]
 dealer_card1 = cards[rand(13)]
 puts "Your cards are #{card1} and #{card2}"
 hand = card_value(card1) + card_value(card2)
 puts "Your total hand is #{hand}"
 puts "The dealers card is #{dealer_card1}"
 if hand == 21
  puts "21, You Win!"
 else
  puts "Are you going to hit or stand? (h/s)"
  hit_stand = gets.chomp
  if hit_stand == "h"
   card3 = cards[rand(13)]
   hand2 = hand + card_value(card3)
   puts "Your next card is #{card3}, your total hand is now #{hand2}"
   if hand2 > 21
    puts "BUST!"
   else 
    puts "Are you going to hit or stand? (h/s)"
    hit_stand = gets.chomp
    if hit_stand == "h"
     card4 = cards[rand(13)]
     hand3 = hand2 + card_value(card4)
     puts "Your next card is #{card4}, your total hand is now #{hand3}"
     if hand3 > 21
      puts "BUST!"
     else
      puts "You Win!"
     end
    elsif hit_stand == "s"
     puts "You got #{hand2}!"
     dealer_card2 = cards[rand(13)]
     dealer_value1 = dealer_card_value(dealer_card1)
     dealer_value2 = dealer_card_value(dealer_card2)
     if dealer_value1 == "A"
      dealer_value1 = 11
     end
     if dealer_value2 == "A"
      if dealer_value1 < 11
       dealer_value2 = 11
      else
       dealer_value2 = 1
      end
     end 
     dealer_hand1 = dealer_value1 + dealer_value2
     if dealer_hand1 < 18
      dealer_card3 = cards[rand(13)]
      dealer_value3 = dealer_card_value(dealer_card3)
      if dealer_value3 == "A"
       if dealer_hand1 < 11
        dealer_value3 = 11
       else
        dealer_value3 = 1
       end
      end
      dealer_hand2 = dealer_hand1 + dealer_value3
      if dealer_hand2 > 21
       puts "The dealer busts!, YOU WIN!!"
      else
       if dealer_hand2 > hand2 
        puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand2}, you lose"
       elsif dealer_hand2 == hand2
        puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand2}, you tie!"
       else
        puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand2}, YOU WIN!!"
       end
      end
     else
      if dealer_hand1 > hand2 
       puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand1}, you lose"
      elsif dealer_hand1 == hand2
       puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand1}, you tie!"
      else
       puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand1}, YOU WIN!!"
      end
     end
    else
     puts "ERROR!"
    end
   end
  elsif hit_stand == "s"
   puts "You got #{hand}!"
   dealer_card2 = cards[rand(13)]
   dealer_value1 = dealer_card_value(dealer_card1)
   dealer_value2 = dealer_card_value(dealer_card2)
   if dealer_value1 == "A"
    dealer_value1 = 11
   end
   if dealer_value2 == "A"
    if dealer_value1 < 11
     dealer_value2 = 11
    else
     dealer_value2 = 1
    end
   end 
   dealer_hand1 = dealer_value1 + dealer_value2
   if dealer_hand1 < 18
    dealer_card3 = cards[rand(13)]
    dealer_value3 = dealer_card_value(dealer_card3)
    if dealer_value3 == "A"
     if dealer_hand1 < 11
      dealer_value3 = 11
     else
      dealer_value3 = 1
     end
    end
    dealer_hand2 = dealer_hand1 + dealer_value3
    if dealer_hand2 > 21
     puts "The dealer busts!, YOU WIN!!"
    else
     if dealer_hand2 > hand 
      puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand2}, you lose"
     elsif dealer_hand2 == hand
      puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand2}, you tie!"
     else
      puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand2}, YOU WIN!!"
     end
    end
   else
    if dealer_hand1 > hand 
     puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand1}, you lose"
    elsif dealer_hand1 == hand
     puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand1}, you tie!"
    else
     puts "The dealer has #{dealer_card1}, #{dealer_card2}, #{dealer_card3} for a total of #{dealer_hand1}, YOU WIN!!"
    end
   end
  else
   puts "ERROR!"
  end
 end
else
 puts "Maybe next time!"
end


