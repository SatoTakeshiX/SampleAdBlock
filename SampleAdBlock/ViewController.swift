//
//  ViewController.swift
//  SampleAdBlock
//
//  Created by satoutakeshi on 2015/10/06.
//  Copyright © 2015年 satoutakeshi. All rights reserved.
//

import UIKit
import SafariServices
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SFContentBlockerManager.reloadContentBlockerWithIdentifier("pw.afrel.SampleAdBlock.ContentBlocker") {
            (error) in
            print("Reloaded: \(error)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}