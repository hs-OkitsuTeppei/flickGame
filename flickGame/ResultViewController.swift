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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
