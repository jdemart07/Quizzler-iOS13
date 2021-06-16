//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Justin DeMartinis on 6/15/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        
        Question(q: "Ronaldo played for Manchester United before Real Madrid.", a: "True"),
        Question(q: "Italy has 5 World Cups.", a: "False"),
        Question(q: "Sancho is a right winger.", a: "True"),
        Question(q: "Balotelli played for Inter Milan", a: "True"),
        Question(q: "Italy won the 2002 World Cup", a: "False"),
        Question(q: "Jose Mourinho first coached Porto", a: "True"),
        Question(q: "Marcus Rashford was born on Halloween", a: "True"),
        Question(q: "Marco Verratti once played for Sassuolo", a: "False")
        
    ]
    
    var questionNumber = 0
    var scoreNumber = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        
        if userAnswer == quiz[questionNumber].answer{
            scoreNumber += 1
            return true
        }
        else {
            return false
            
        }
    }
    
    func getQuestionText() -> String {
        
        return quiz[questionNumber].questionText
        
    }
    
    func getProgress() -> Float {
        
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
        
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }
        else {
            questionNumber = 0
            scoreNumber = 0
        }
    }
    
    func getScore() -> Int {
        
        return scoreNumber
        
    }
    
}
