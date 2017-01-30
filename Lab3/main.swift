//
//  main.swift
//  Lab3
//
//  Created by Christopher Aytona on 2017-01-23.
//  Copyright © 2017 Christopher Aytona. All rights reserved.
//

import Foundation

class Board {
    var m_Board = [[String]]()
    var m_Counter = Int()
    var m_Winner = String()
    
    init() {
        self.m_Board = Array<Array<String>>()
        self.m_Counter = 0
        self.m_Winner = Mark.Empty.rawValue
        for _ in 0...2 {
            var col = Array<String>()
            for _ in 0...2 {
                col.append(Mark.Empty.rawValue)
            }
            self.m_Board.append(col)
        }
    }
    
    func Move(_ coord: (Int, Int), mark: Mark) {
        if (coord.0 > 2 || coord.1 > 2 || coord.0 < 0 || coord.1 < 0) {
            print("Out of bounds!")
            return
        }
        if (self.m_Board[coord.0][coord.1] != Mark.Empty.rawValue) {
            print("Spot taken!")
            return
        }
        else {
            self.m_Board[coord.0][coord.1] = mark.rawValue
            self.m_Counter += 1
        }
    }
    
    func CheckWinner() -> String {
        let mid = 1
        for row in 0...2 {
            if (self.m_Board[row][mid] == self.m_Board[row][mid - 1] && self.m_Board[row][mid] == self.m_Board[row][mid + 1]) {
                return self.m_Board[row][mid]
            }
        }
        for col in 0...2 {
            if (self.m_Board[mid][col] == self.m_Board[mid - 1][col] && self.m_Board[mid][col] == self.m_Board[mid + 1][col]) {
                return self.m_Board[mid][col]
            }
        }
        if (self.m_Board[mid][mid] == self.m_Board[mid - 1][mid - 1] && self.m_Board[mid][mid] == self.m_Board[mid + 1][mid + 1]) {
            return self.m_Board[mid][mid]
        } else if (self.m_Board[mid][mid] == self.m_Board[mid - 1][mid + 1] && self.m_Board[mid][mid] == self.m_Board[mid + 1][mid - 1]) {
            return self.m_Board[mid][mid]
        }
        return Mark.Empty.rawValue
    }
    
    func GameOver(_ winner: String) -> Bool {
        if (winner != Mark.Empty.rawValue) {
            print("The winner is: " + winner)
            return true
        } else if(self.m_Counter >= 9) {
            print("It's a tie!")
            return true
        }
        return false
    }
    
    func PrintBoard() {
        for i in 0...2 {
            for j in 0...2 {
                print(self.m_Board[i][j])
            }
        }
    }
}

enum Mark : String {
    case X = "X"
    case O = "O"
    case Empty = "_"
}

var game = Board()
var playGame = readLine()
print("Would you like to play TicTacToe? y/n")

while playGame == "y" {
    game.PrintBoard()
    print("Type X Coord")
    var xCoord = Int(readLine()!)
    print("Type Y Coord")
    var yCoord = Int(readLine()!)
    print("Type Mark")
    var ark = Mark(rawValue: readLine()!)
    game.Move((xCoord!, yCoord!), mark: ark!)
    if (game.GameOver(game.CheckWinner())) {
        print("Game Over!")
        break
    }
}
