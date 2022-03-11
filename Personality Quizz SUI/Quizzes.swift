//
//  Quizzes.swift
//  PersonalityQuiz
//
//  Created by Augusto Galindo Alí on 8/24/20.
//  Copyright © 2020 Augusto Galindo Ali. All rights reserved.
//

import Foundation

struct Quizz: Hashable {
    static func == (lhs: Quizz, rhs: Quizz) -> Bool {
        return lhs.fullName == rhs.fullName && lhs.shortName == rhs.shortName
    }
    
    var fullName: String
    var shortName: String
    var questions: [Question]
}

var animalQuizz: Quizz = Quizz(fullName: "Which animal are you?", shortName: "Animal Quizz", questions: [
        Question(
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrots", type: .rabbit),
                Answer(text: "Corn", type: .turtle)
        ]),
        
        Question(
            text: "Which activities do you enjoy?",
            type: .multiple,
            answers: [
                Answer(text: "Swimming", type: .turtle),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Eating", type: .dog)
        ]),
        
        Question(
            text: "How much do you enjoy car rides?",
            type: .ranged,
            answers: [
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle),
                Answer(text: "I love them", type: .dog)
        ])
    ])

var narutoQuizz: Quizz = Quizz(fullName: "Which Naruto character are you?", shortName: "Naruto Quizz", questions: [
    Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
            Answer(text: "Ramen", type: .naruto),
            Answer(text: "Boiled Eggs", type: .sasuke),
            Answer(text: "Sweets", type: .sakura),
            Answer(text: "BBQ", type: .kakashi)
    ]),
    
    Question(
        text: "Which activities do you enjoy?",
        type: .multiple,
        answers: [
            Answer(text: "Training", type: .naruto),
            Answer(text: "Sleeping", type: .sakura),
            Answer(text: "Reading", type: .kakashi),
            Answer(text: "Eating", type: .naruto)
    ]),
    
    Question(
        text: "How much do you enjoy missions?",
        type: .ranged,
        answers: [
            Answer(text: "I dislike them", type: .sakura),
            Answer(text: "I get a little nervous", type: .kakashi),
            Answer(text: "I barely notice them", type: .sasuke),
            Answer(text: "I love them", type: .naruto)
    ])
])

var rockQuizz: Quizz = Quizz(fullName: "Which Rock singer are you?", shortName: "Rock Quizz", questions: [
    Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
            Answer(text: "Pizza", type: .corey),
            Answer(text: "Pasta", type: .freddie),
            Answer(text: "BBQ", type: .slash),
            Answer(text: "Veggie", type: .sting)
    ]),
    
    Question(
        text: "Which activities do you enjoy?",
        type: .multiple,
        answers: [
            Answer(text: "Swimming", type: .slash),
            Answer(text: "Sleeping", type: .sting),
            Answer(text: "Driving", type: .freddie),
            Answer(text: "Eating", type: .corey)
    ]),
    
    Question(
        text: "How much do you playing the guitar?",
        type: .ranged,
        answers: [
            Answer(text: "I dislike it", type: .sting),
            Answer(text: "I get a little nervous", type: .freddie),
            Answer(text: "I barely notice them", type: .corey),
            Answer(text: "I love it", type: .slash)
    ])
])

var onePieceQuizz: Quizz = Quizz(fullName: "Which One Piece character are you?", shortName: "One Piece Quizz", questions: [
    Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
            Answer(text: "Steak", type: .luffy),
            Answer(text: "Fish", type: .zoro),
            Answer(text: "Oranges", type: .nami),
            Answer(text: "Sweets", type: .brook)
    ]),
    
    Question(
        text: "Which activities do you enjoy?",
        type: .multiple,
        answers: [
            Answer(text: "Swimming", type: .zoro),
            Answer(text: "Sleeping", type: .nami),
            Answer(text: "Reading", type: .brook),
            Answer(text: "Eating", type: .luffy)
    ]),
    
    Question(
        text: "How much do you enjoy fighting?",
        type: .ranged,
        answers: [
            Answer(text: "I dislike it", type: .brook),
            Answer(text: "I get a little nervous", type: .nami),
            Answer(text: "I barely notice it", type: .zoro),
            Answer(text: "I love it", type: .luffy)
    ])
])

var bleachQuizz: Quizz = Quizz(fullName: "Which Bleach character are you?", shortName: "Bleach Quizz", questions: [
    Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
            Answer(text: "Fruits", type: .rukia),
            Answer(text: "Ramen", type: .orihime),
            Answer(text: "Miso", type: .ishida),
            Answer(text: "Rice", type: .ichigo)
    ]),
    
    Question(
        text: "Which activities do you enjoy?",
        type: .multiple,
        answers: [
            Answer(text: "Training", type: .ichigo),
            Answer(text: "Sleeping", type: .orihime),
            Answer(text: "Fighting", type: .ishida),
            Answer(text: "Eating", type: .rukia)
    ]),
    
    Question(
        text: "How much do you enjoy hanging out with friends?",
        type: .ranged,
        answers: [
            Answer(text: "I dislike it", type: .rukia),
            Answer(text: "I get a little nervous", type: .ishida),
            Answer(text: "I barely notice it", type: .ichigo),
            Answer(text: "I love it", type: .orihime)
    ])
])

var peruQuizz: Quizz = Quizz(fullName: "Which Peruvian celebrity are you?", shortName: "Peru Quizz", questions: [
    Question(
        text: "Which food do you like the most?",
        type: .single,
        answers: [
            Answer(text: "Salchipapa", type: .tongo),
            Answer(text: "Ceviche", type: .tapir590),
            Answer(text: "Chaufa", type: .faraon),
            Answer(text: "Locro", type: .tongo),
            Answer(text: "Polla a la Brasa", type: .susy)
    ]),
    
    Question(
        text: "Which apps do you use most?",
        type: .multiple,
        answers: [
            Answer(text: "Tik Tok", type: .susy),
            Answer(text: "Facebook", type: .tapir590),
            Answer(text: "WhatsApp", type: .tongo),
            Answer(text: "Tinder", type: .faraon),
            Answer(text: "Hi5", type: .susy)
    ]),
    
    Question(
        text: "How much do you like panocha?",
        type: .ranged,
        answers: [
            Answer(text: "I dislike it", type: .susy),
            Answer(text: "Not so much", type: .tongo),
            Answer(text: "Normal", type: .tapir590),
            Answer(text: "I love it", type: .faraon)
    ]),
    
    Question(
        text: "What is your favorite music genre?",
        type: .single,
        answers: [
            Answer(text: "Chicha", type: .tongo),
            Answer(text: "Reggaeton", type: .tapir590),
            Answer(text: "Trap", type: .faraon),
            Answer(text: "Cumbia", type: .susy)
    ])
])

var theQuizzes = [animalQuizz, narutoQuizz, rockQuizz, onePieceQuizz, bleachQuizz, peruQuizz]
