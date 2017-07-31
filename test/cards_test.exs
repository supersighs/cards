defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test 'create_deck makes 20 cards' do
    deck_length = length(Cards.create_deck)
    assert 20 = deck_length
  end

  test 'shuffling a deck randomizes it' do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

end
