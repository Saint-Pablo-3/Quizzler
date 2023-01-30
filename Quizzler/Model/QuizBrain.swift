//
//  Question.swift
//  Quizzler
//
//  Created by Pavel Reshetov on 25.01.2023.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(text: "Which is the largest organ in the human body?", answers: ["Heart", "Skin", "Large Intestine"], rightAnswer: "Skin"),
        Question(text: "Five dollars is worth how many nickels?", answers: ["25", "50", "100"], rightAnswer: "100"),
        Question(text: "What do the letters in the GMT time zone stand for?", answers: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], rightAnswer: "Greenwich Mean Time"),
        Question(text: "What is the French word for 'hat'?", answers: ["Chapeau", "Écharpe", "Bonnet"], rightAnswer: "Chapeau"),
        Question(text: "In past times, what would a gentleman keep in his fob pocket?", answers: ["Notebook", "Handkerchief", "Watch"], rightAnswer: "Watch"),
        Question(text: "How would one say goodbye in Spanish?", answers: ["Au Revoir", "Adiós", "Salir"], rightAnswer: "Adiós"),
        Question(text: "Which of these colours is NOT featured in the logo for Google?", answers: ["Green", "Orange", "Blue"], rightAnswer: "Orange"),
        Question(text: "What alcoholic drink is made from molasses?", answers: ["Rum", "Whisky", "Gin"], rightAnswer: "Rum"),
        Question(text: "What type of animal was Harambe?", answers: ["Panda", "Gorilla", "Crocodile"], rightAnswer: "Gorilla"),
        Question(text: "Where is Tasmania located?", answers: ["Indonesia", "Australia", "Scotland"], rightAnswer: "Australia")
    ]
    
    func getQuestion() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
