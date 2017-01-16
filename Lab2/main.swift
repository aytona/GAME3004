//
//  main.swift
//  Lab2
//
//  Created by Christopher Aytona on 2017-01-16.
//  Copyright © 2017 Christopher Aytona. All rights reserved.
//

import Foundation

// Question 1
func countToHundred() {
    for num in 1...100 {
        print((num % 3 == 0) ? ((num % 5 == 0) ? "three*five" : "three*") : ((num % 5 == 0) ? "five*" : String(num)))
    }
}

// Question 2
func swap(a : inout Int, b : inout Int) {
    (a, b) = (b, a)
}

// Question 3
func anagram(Word word : String,Candidates candidates : [String]) -> [String] {
    var sortedWord = Array(word.characters)
    sortedWord.sort()
    var anagrams = [String]()
    for index in 0...candidates.count-1 {
        var candidate = Array(candidates[index].characters)
        candidate.sort()
        if(candidate == sortedWord) {
            anagrams.append(candidates[index])
        }
    }
    return anagrams
}

// Question 4
postfix operator ++
prefix operator ++

postfix func ++ (val : inout Int) -> Int {
    var a = val
    a += 1
    return a
}

prefix func ++ (val : inout Int) -> Int {
    val += 1
    return val
}

countToHundred()

var a = 2
var b = 4
swap(&a, &b)
print("a=\(a) b=\(b)")

var Word = "listen"
var Candidates: [String] = ["enlist", "google", "inlets", "banana"]
print(anagram(Word: Word, Candidates: Candidates))

var post = 1
post++
var pre = 1
++pre
print(post)
print(pre)
