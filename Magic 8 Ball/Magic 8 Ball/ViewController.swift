//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Zdeněk Černoch on 20.05.18.
//  Copyright © 2018 Zdeněk Černoch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        giveAnswer()
        
    }
    
    func giveAnswer() {
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        giveAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        giveAnswer()
    }
    
}

