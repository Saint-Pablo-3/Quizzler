//
//  Question.swift
//  Quizzler
//
//  Created by Pavel Reshetov on 25.01.2023.
//

import Foundation

struct Question {
    
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(text: String, answers: [String], rightAnswer: String) {
        self.text = text
        self.answers = answers
        self.rightAnswer = rightAnswer
    }
}
