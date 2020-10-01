//
//  ResultViewController.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/10/01.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit


class ResultViewController: UIViewController {

    @IBOutlet weak var correctAnswer: UILabel!
    var quizCount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(quizCount)
        correctAnswer.text = quizCount + "問"
    }
    
    @IBAction func playAgainButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "GameView", bundle: nil)
        let GameVC = storyboard.instantiateViewController(withIdentifier: "GameView")
        GameVC.modalPresentationStyle = .fullScreen
        self.present(GameVC, animated: true, completion: nil)
    }
    
    @IBAction func backToMenu(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let GameVC = storyboard.instantiateViewController(withIdentifier: "MainView")
        GameVC.modalPresentationStyle = .fullScreen
        self.present(GameVC, animated: true, completion: nil)
    }
    
    
}
