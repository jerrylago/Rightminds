//
//  Question.swift
//  Rightmind
//
//  Created by Jerry LaGore on 8/11/19.
//  Copyright © 2019 Jerry LaGore. All rights reserved.
//

import Foundation

struct Question {
    var questionString: String?
    var answers: [String]
    var selectedAnswerIndex: Int?
    var correctAnswerIndex: Int?
}

var questionsList: [Question] = [

    Question(questionString: "Where was the Hindenburg trying to land when it was destroyed?", answers: ["New Jersey", "New York", "Paris", "Maine"], selectedAnswerIndex: nil, correctAnswerIndex: 0),
    Question(questionString: "How many people were on the Hindenburg when it caught fire?", answers: ["78", "97", "103", "130"], selectedAnswerIndex: nil, correctAnswerIndex: 1),
    Question(questionString: "How long did it take for the Hindenburg to travel from Europe to the USA?", answers: ["2 days", "3 days", "1 week", "9 days"], selectedAnswerIndex: nil, correctAnswerIndex: 1),
    Question(questionString: "Which ocean did Amelia Earhart cross in her plane?", answers: ["Indian", "Pacific", "Arctic", "Atlantic"], selectedAnswerIndex: nil, correctAnswerIndex: 1),
    Question(questionString: "What year was the Hindenburg built?", answers: ["1928", "1920", "1942", "1936"], selectedAnswerIndex: nil, correctAnswerIndex: 3),
    Question(questionString: "Which country did the Hindenburg come from?", answers: ["Luxembourg", "Germany", "England", "France"], selectedAnswerIndex: nil, correctAnswerIndex: 1),
    Question(questionString: "How many intercontinental trips did the Hindenburg make in 1936?", answers: ["1", "9", "17", "28"], selectedAnswerIndex: nil, correctAnswerIndex: 2),
    Question(questionString: "All EXCEPT which room could have been found in the Hindenburg?", answers: ["Dining Room", "Smoke Room", "Lounge", "Piano Room"], selectedAnswerIndex: nil, correctAnswerIndex: 3),
    Question(questionString: "How many German airships crashed prior to 1937?", answers: ["One", "Two", "Three", "None"], selectedAnswerIndex: nil, correctAnswerIndex: 3),
    Question(questionString: "What type of gas did the Hindenburg use?", answers: ["Hydrogen", "Helium", "Oxygen", "Chlorine"], selectedAnswerIndex: nil, correctAnswerIndex: 0),
    Question(questionString: "What was the name of the man who captured the famous photograph?", answers: ["James Smith", "John Doe", "Sam Shere", "Oren Kent"], selectedAnswerIndex: nil, correctAnswerIndex: 2),
    Question(questionString: "How many passengers perished in the crash?", answers: ["12", "26", "36", "44"], selectedAnswerIndex: nil, correctAnswerIndex: 2),
    ]
