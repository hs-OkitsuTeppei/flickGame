//
//  ViewController.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/14.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tappedEasy(_ sender: Any) {
        let storyboard = UIStoryboard(name: "GameView", bundle: nil)
        let GameVC = storyboard.instantiateViewController(withIdentifier: "GameView")
        GameVC.modalPresentationStyle = .fullScreen
        self.present(GameVC, animated: true, completion: nil)
    }
}

