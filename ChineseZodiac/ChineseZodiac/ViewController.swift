//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by phishing on 15/4/21.
//  Copyright (c) 2015年 phishing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var yearNum: UITextField!

    @IBOutlet weak var imageObj: UIImageView!
    
    let offset = 3
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearNum.resignFirstResponder()
    }

    @IBAction func goConfirm(sender: AnyObject) {
//        yearNum.resignFirstResponder()
        if let year = yearNum.text.toInt() {
            var num = (year - offset) % 12
            imageObj.image = UIImage(named: String(num))
        }
    }

}

