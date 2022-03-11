//
//  ResultsView.swift
//  Personality Quizz SUI
//
//  Created by Augusto Galindo Alí on 8/18/20.
//  Copyright © 2020 Augusto Galindo Ali. All rights reserved.
//

import SwiftUI

struct ResultsView: View {
    @Binding var RootView: Bool
    
    @Environment(\.presentationMode) var presentation
    var responses: [Answer]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("You are \(calculatePersonalityResult().rawValue)").font(.system(size: 50))
            Text(calculatePersonalityResult().definition).padding(.horizontal)
        }
        .navigationBarTitle("Results", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(trailing: Button("Done") {
            self.RootView = false
        })
    }
    
    func calculatePersonalityResult() -> anyType {
        let frequencyOfAnswers = responses.reduce(into: [:]) { (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        
//        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        return frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
    }

}

#if DEBUG
struct ResultsView_Previews: PreviewProvider {
    @State static var value = true
    
    static var previews: some View {
        ResultsView(RootView: $value, responses: theQuizzes[0].questions[0].answers)
    }
}
#endif
