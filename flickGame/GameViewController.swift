//
//  GameViewController.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/19.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import Foundation
import UIKit

class GameViewController: UIViewController {


    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var quizLabel: UILabel!
    let quiz = Quiz()
    var quizList = [""]
    var quizCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("GameVC_viewDidLoad\n")
        inputTextField.delegate = self
        quizList = quiz.setQuizList(level: .easy)
    }
    override func viewWillAppear(_ animated: Bool) {
        quizLabel.text = "タップして開始！"
    }
    
    
    func presentTimer(){
        Timer.scheduledTimer(timeInterval: 30.0,
                             target: self,
                             selector: #selector(timerUpdate),
                             userInfo: nil,
                             repeats: false)
    }
    
    @objc private func timerUpdate() {
        let storyboard = UIStoryboard(name: "GameView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TimeUpView")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    
}

extension GameViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("テキストフィールド入力状態前")
        quizLabel.text = quizList.first
        self.presentTimer()
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("リターン入力時")
        if textField.text == quizLabel.text {
            quizCount += 1
            textField.text = ""
            quizLabel.text = quizList[quizCount]
        }

        // キーボードを閉じる
        // textField.resignFirstResponder()
        // textField.endEditing(true)
        return true
    }
}
