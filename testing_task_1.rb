class CardGame


  def checkforAce(card) #function name isnt written in the correct case, should be lower snake case
    if card.value = 1 #missing an ==, should be ==
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)#typo (dif instead of def), no comma inside the brackets between card1 and card2)
  if card1.value > card2.value
    return card #typo, should be card1
  else
    return card2
  end
end
end #extra end added

def self.cards_total(cards)
  total #total has been given no defined value
  for card in cards
    total += card.value #needs an end to finish the for loop
    return "You have a total of" + total #cant add an integer to a string like this, use string interpolation
  end
end
