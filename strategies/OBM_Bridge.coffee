# Optimized version of Big Money + Bazaar
{
  name: 'OBM Bridge'
  author: 'WanderingWinder'
  gainPriority: (state, my) -> [
    "Province" if my.countInDeck("Gold") > 0
    "Duchy" if state.gainsToEndGame() <= 4
    "Estate" if state.gainsToEndGame() <= 2
    "Gold"
    "Duchy" if state.gainsToEndGame() <= 6
    "Bridge" if my.countInDeck("Bridge") <= my.countCardTypeInDeck("Treasure") / 10
    "Bridge" if my.countInDeck("Bridge") == 0
    "Bazaar"
    "Silver"
  ]
}

