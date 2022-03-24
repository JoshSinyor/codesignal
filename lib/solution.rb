# frozen_string_literal: true

def solution(players)
  teams = [0, 0]
  players.each_with_index { |player, index| teams[index.even? ? 0 : 1] += player }
  teams
end
