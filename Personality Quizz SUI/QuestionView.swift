//
//  QuestionView.swift
//  Personality Quizz SUI
//
//  Created by Augusto Galindo Alí on 8/18/20.
//  Copyright © 2020 Augusto Galindo Ali. All rights reserved.
//

import SwiftUI

struct QuestionView: View {
    var quizz: Quizz
    @Binding var rootIsActive: Bool
    @State var questions: [Question]
    var title: String
    
    @State var questionIndex = 0
    @State var currentQuestion: Int? = 0
    @State var answerChosen: [Answer] = []
    @State var myToggle = false
    @State var mySlider: Double = 0.5
    
    var totalQuestions: Int {
        questions.count
    }
    
    init(quizz: Quizz, rootIsActive: Binding<Bool>) {
        self.quizz = quizz
        self._rootIsActive = rootIsActive
        self._questions = State(initialValue: quizz.questions.shuffled())
        self.title = quizz.shortName
    }
    
    var body: some View {
        VStack {
            VStack{
                Spacer().frame(height: 20)
                Text("Question #\(questionIndex + 1)").font(.system(size: 18))
                    
                    .foregroundColor(Color.black)
                    
                Spacer().frame(height: 20)
                Text(questions[questionIndex].text).font(.system(size: 32)).foregroundColor(Color.black).multilineTextAlignment(.center).padding([.trailing, .leading])
                
                NavigationLink(destination: ResultsView(RootView: $rootIsActive, responses: answerChosen), tag: totalQuestions, selection: $currentQuestion) {
                    EmptyView()
                }.isDetailLink(false)
                
                Spacer()
                
                switch questions[questionIndex].type {
                case .multiple:
                    VStack(spacing: 20){
                        ForEach(questions[questionIndex].answers, id: \.self) { answer in
                          Toggle(
                            answer.text,
                            isOn: self.makeBinding(answer)
                          ).padding(.horizontal)
                        }
                        
                        Button("Submit Answer") {
                            let myAnswers = questions[questionIndex].answers.filter {
                                $0.status == true
                            }
                            answerChosen.append(contentsOf: myAnswers)
                            nextQuestion()
                        }
                    }
                    
                case .single:
                    VStack(){
                        ForEach(questions[questionIndex].answers.shuffled(), id: \.self) { answer in
                            Button(answer.text) {
                                answerChosen.append(answer)
                                nextQuestion()
                            }
                            Spacer()
                                .frame(minHeight: 10, maxHeight: 50)
                        }
                    }
                    
                case .ranged:
                    VStack(spacing: 20) {
                        Slider(value: self.$mySlider, in: 0...1, step: 0.5).padding([.trailing, .leading])
                        HStack() {
                            Text(questions[questionIndex].answers.first!.text)
                            Spacer()
                            Text(questions[questionIndex].answers.last!.text)
                        }.padding([.trailing, .leading])
                        
                        Button("Submit Answer") {
                            let index = Int(round(mySlider * Double(questions[questionIndex].answers.count - 1)))
                            answerChosen.append(questions[questionIndex].answers[index])
                            nextQuestion()
                        }
                        
                    }
                }

                Spacer()
                
                ProgressView(value: Float(questionIndex), total: Float(totalQuestions))
                    .padding()
            }
            .onAppear(perform: {
                questions.shuffle()
                answerChosen.removeAll()
                randomizeQuestion()
            })
        }
        .navigationBarTitle(title, displayMode: .inline)
        
    }
    
    func nextQuestion() {
        if currentQuestion != nil {
            currentQuestion! += 1
        }
        if questionIndex < totalQuestions - 1 {
            questionIndex += 1
        }
        
        randomizeQuestion()
    }
    
    func randomizeQuestion() {
        if questions[questionIndex].type != .ranged {
            questions[questionIndex].answers.shuffle()
        }
    }
    
    func makeBinding(_ item: Answer) -> Binding<Bool> {
        let i = self.questions[questionIndex].answers.firstIndex { $0.text == item.text }!
      return .init(
        get: { self.questions[questionIndex].answers[i].status },
        set: { self.questions[questionIndex].answers[i].status = $0 }
      )
    }
    
}

#if DEBUG
struct QuestionView_Previews: PreviewProvider {
    
    @State static var value = true

    static var previews: some View {
        QuestionView(quizz: theQuizzes[0], rootIsActive: $value)
    }
}
#endif
