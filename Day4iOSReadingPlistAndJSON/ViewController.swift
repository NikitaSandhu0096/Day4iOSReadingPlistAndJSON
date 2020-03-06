//
//  ViewController.swift
//  Day4iOSReadingPlistAndJSON
//
//  Created by Nikita Sandhu on 2020-03-06.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        readPlistData()
        // Do any additional setup after loading the view.
    }

    func readPlistData(){
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist"){
//            print(bundlePath)
            if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath){
                print(dictionary)
                if let countries = dictionary["countries"] as? [String]{
                    for v in countries{
                        print(v)
                    }
                }
            }
        }
    }

}

