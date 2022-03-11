//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Augusto Galindo Alí on 8/17/20.
//  Copyright © 2020 Augusto Galindo Ali. All rights reserved.
//

import Foundation

struct Question: Hashable {
    static func == (lhs: Question, rhs: Question) -> Bool {
        return lhs.answers == rhs.answers
    }

    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType: Hashable {
    case single, multiple, ranged
}

struct Answer: Hashable {
    var text: String
    var type: anyType
    var status: Bool = false
}

enum anyType: String, Hashable {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    case naruto = "Naruto", sasuke = "Sasuke", sakura = "Sakura", kakashi = "Kakashi"
    case freddie = "Freddie Mercuri", slash = "Slash", corey = "Corey Taylor", sting = "Sting"
    case luffy = "Luffy", zoro = "Zoro", nami = "Nami", brook = "Brook"
    case ichigo = "Ichigo", ishida = "Ishida", rukia = "Rukia", orihime = "Orihime"
    case faraon = "Faraon Love Shady", tongo = "Tongo", tapir590 = "Tapir 590", susy = "Susy Diaz"
    
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
            
        case .naruto:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .kakashi:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .sasuke:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .sakura:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
            
        case .slash:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .freddie:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .corey:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .sting:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
            
        case .luffy:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .zoro:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms. You lose  around often!"
        case .nami:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .brook:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
            
        case .ichigo:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .orihime:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms. You lose  around often!"
        case .ishida:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .rukia:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
            
        case .faraon:
            return "All your friends are giles but you, you are the only chevere amongst them, but you still care for them, you love her panocha and tetas a lot."
        case .tongo:
            return "You are the gordo chevere that is funny, get drunk easily."
        case .tapir590:
            return "You are the rich of the group, your friends are misios, of course pet!"
        case .susy:
            return "You are the prettiest of the group!"
        }
    }
}
