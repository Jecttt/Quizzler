//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Macbook on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var quiz = [
        Question(text:"Apakah nabi muhammad di beri laqob al-amin oleh penduduk quraisy?",answer:"True")
              ,Question(text:"Apakah mu'jizat nabi musa adalah diturunkan nya kitab taurat?",answer:"True"),
               Question(text: "Apakah istri kedua rasulullah adalah khodijah?",answer: "False"),
               Question(text: "Apakah umar merupakan kahlifah kedua di dalam sejarah islam?",answer: "True"),
              Question(text: "Apakah Abu bakar yang menemani rasulullah ketika di dalam gua hira?",answer: "True"),
              Question(text: "Apakah Ali merupakan paman rasulullah ?",answer: "False"),
              Question(text: "Apakah rukun islam berjumlah 6",answer: "False"),
              Question(text: "Apakah puasa merupakan tiang agama",answer: "False"),
              Question(text: "Sholat subuh 2 rakaat",answer: "True"),
              Question(text: "Tanda hari kiamat,keluar nya dajjal",answer: "True")
    ]
    
    var score = 0
    var questionNumber = 0
    
    func getScore() -> Int{
        return score
    }
    
    func getQuestionText() -> String{
        quiz[questionNumber].text
    }
    
    func getProgress() -> Float{
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func nextQuesion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 10
            return true
        }else{
            return false
        }
    }
    
}
