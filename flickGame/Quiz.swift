//
//  Quiz.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/19.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import Foundation

class Quiz {
    
    enum QuizLevel {
        case easy
        case nomal
        case hard
    }
    
    let levelEasy = ["かに","たばこ","うさぎ","でんわ","にんげん","くま","けんだま","うま"]
    let levelNomal = ["運動","価格","公園","満員電車"]
    let levelHard = ["心頭滅却","諭す","東雲","喧々諤々"]
    
    func setQuizList(level: QuizLevel) -> [String] {
        var quizList: [String]
        switch level {
        case .easy:
            quizList = levelEasy
        case .nomal:
            quizList = levelNomal
        case .hard:
            quizList = levelHard
        }
        quizList.shuffle()
        return quizList
    }
}
