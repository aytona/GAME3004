//
//  main.swift
//  GAME3004 iOS Game Development
//  Lab1
//
//  Created by Christopher Aytona on 2017-01-16.
//  Copyright © 2017 Christopher Aytona. All rights reserved.
//

import Foundation

// Declaration of variables and constants
var a = 1
a = 2
// a = 0.2
// declaring a constant
let one = 1
// one = 2

// Basic operators
let sum = 1 + 2
let diff = 5 - sum
let mul = sum * diff
let div = mul / diff
let mod = 7 % 3
(1 + 1) * (5 - 2)

// Line evaluation in xCode
var numberOfApples = 25
var numberOfOranges = 30

numberOfApples = numberOfApples - 1
numberOfOranges = numberOfOranges * 2

var stashedFruits = numberOfApples + numberOfOranges

numberOfApples += 2
stashedFruits /= 2

// Exercise 1
var numberOfYears = 1
var numberOfDays = numberOfYears * 365
var numberOfHours = numberOfDays * 24
var numberOfMinutes = numberOfHours * 60
let secondsInYear = numberOfMinutes * 60

// Exercise 2
var width = 600
var height = 800
let numberOfPixels = width * height
var resolution = "\(width / (height % width)) : \(height / (height % width))"

// Arrays and Dictionaries
var shoppingList = ["castfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]

occupations["Jayne"] = "Public Relations"

// Processing arrays and dictionaries with loops
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

// Functions are defined with the following syntax
// func myFunction (paramName: ParamType)->ReturnType{...}
func contains(ar: [Int], el:Int)->Bool {
    for i in ar {
        if i==el {
            return true;
        }
    }
    return false;
}

var arr = [1, 5, 93, 192]
print (contains(ar:arr, el:5))

// Exercise 3
func contains(ar: [String], el:String)->Bool {
    for i in ar {
        if i==el {
            return true;
        }
    }
    return false;
}

var arrString = ["Test", "Chris", "Stephen", "Frank"]
print (contains(ar: arrString, el: "Chris"))
