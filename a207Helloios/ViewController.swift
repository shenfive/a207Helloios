//
//  ViewController.swift
//  a207Helloios
//
//  Created by 申潤五 on 2020/7/18.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msg: UILabel!
    var lastNumber = 0
    var lastBtn = 0 //0 沒按過。1:加法
    var isNeedClear = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        msg.text = "0"
    }
    @IBAction func numberAction(_ sender: UIButton) {
        if isNeedClear == true{
            msg.text = ""
            isNeedClear = false
        }
        print(lastNumber)
        let number = msg.text! + sender.titleLabel!.text!
        let theNumber = Int(number)!
        msg.text = "\(theNumber)"
    }
    @IBAction func clearAction(_ sender: Any) {
        msg.text = "0"
        lastBtn = 0
    }
    @IBAction func ans(_ sender: Any) {
        let ans = Int(msg.text!)! + lastNumber
        lastNumber = ans
        lastBtn = 0
        msg.text = "\(ans)"
        
    }
    @IBAction func plusAction(_ sender: Any) {
        lastNumber = Int(msg.text!)!
        lastBtn = 1
        isNeedClear = true
    }
}

