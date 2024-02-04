//
//  ViewController.swift
//  Counter
//
//  Created by Виктория on 04.02.2024.
//

import UIKit

extension Date {
    func localDate() -> Date {
        let nowUTC = Date()
        let timeZoneOffset = Double(TimeZone.current.secondsFromGMT(for: nowUTC))
        guard let localDate = Calendar.current.date(byAdding: .second, value: Int(timeZoneOffset), to: nowUTC) else
        {
            return Date()
        }
        return localDate
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
  
    @IBOutlet weak var counterMinusButton: UIButton!
    @IBOutlet weak var makeZeroButton: UIButton!
    
    @IBOutlet weak var counterPlusButton: UIButton!
    
    @IBOutlet weak var changeInfoTextView: UITextView!
    
    var clickCounter: UInt = 0
    
    var date = Date().localDate()
   
    @IBAction func clickOfCounterPlusButton(_ sender: Any) {
        clickCounter += 1
        counterLabel.text = ("Значение счётчика: \(clickCounter)")
        changeInfoTextView.text.append("\n [\(date)] значение изменено на +1")
    }
    
    @IBAction func clickOfCounterMinusButton(_ sender: Any) {
        if clickCounter != 0 {
            clickCounter -= 1
            counterLabel.text = ("Значение счётчика: \(clickCounter)")
            changeInfoTextView.text.append("\n [\(date)] значение изменено на -1")
        } else {
            counterLabel.text = ("Значение счётчика: \(clickCounter)")
            changeInfoTextView.text.append("\n [\(date)] попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func clickOfMakeZeroButton(_ sender: Any) {
        clickCounter = 0
        counterLabel.text = ("Значение счётчика: \(clickCounter)")
        changeInfoTextView.text.append("\n [\(date)] значение сброшено")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

