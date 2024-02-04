//
//  ViewController.swift
//  Counter
//
//  Created by Виктория on 04.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    
    var clickCounter: Int = 0
    
    @IBAction func clickOfCounterButton(_ sender: Any) {
        clickCounter += 1
        counterLabel.text = ("Значение счётчика: \(clickCounter)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

