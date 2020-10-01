//
//  TimeUpViewController.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/10/01.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import UIKit

class TimeUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        moveToResult()
    }
    
    func moveToResult() {
        Thread.sleep(forTimeInterval: 1.0)
        let storyboard = UIStoryboard(name: "GameView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ResultView")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
