defmodule Rpsgameelx do
  @moduledoc """
  Rpsgameelx module 
  author: Sylvia Onwukwe
  """
  
  #main function, displayed if no argument is passed
  def main([]) do
    IO.puts("Please provide a value of 'rock', 'paper', or 'scissors'")
  end

  #main function, takes in argument passed and saves it as player_move, then calls play function
  def main(args) do
    player_move = List.first(args)
    play(player_move)
  end
  
  #play function which takes player_move, pipes computer move into determine_winner
  defp play(player_move) do
    comp_move
    |> determine_winner(player_move)
    |> IO.puts
  end

  #private function that generates a random move as comp_move
  defp comp_move do
    Enum.random(["rock", "paper", "scissors"])
  end

  #determine_winner takes arguments as player_move and compares with compare_move, then output string
  defp determine_winner("paper", "rock") do
    "You lost, computer played paper"
  end
  defp determine_winner("rock", "scissors") do
    "You lost, computer played rock"
  end
  defp determine_winner("scissors", "paper") do
    "You lost, computer played scissors"
  end
  defp determine_winner(comp_move, player_move) when comp_move == player_move do
    "It was a tie - you both played #{comp_move}"
  end
  defp determine_winner(comp_move, _) do
    "You win! Computer played #{comp_move}"
  end

end
