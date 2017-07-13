//
//  ViewController.swift
//  AppIconSwitch
//
//  Created by Steven Smith on 7/12/17.
//  Copyright © 2017 Steven Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if UIApplication.shared.supportsAlternateIcons {
            print("I can do it")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func baseballIcon(_ sender: Any) {
        switchIcon(name: "baseball")
    }

    @IBAction func hockeyIcon(_ sender: Any) {
        switchIcon(name: "hockey")
    }


    @IBAction func basketballIcon(_ sender: Any) {
        switchIcon(name: "basketball")
    }

    @IBAction func resetIcon(_ sender: Any) {
        switchIcon(name: nil)
    }

    private func switchIcon(name: String?) {
        //note that the name corresponds to the key in the Info.plist CFBundleAlternateIcons dictionary
        UIApplication.shared.setAlternateIconName(name) { (error: Error?) in
            guard let error = error else {
                print("success")
                return
            }
            print("switching icon to: \(String(describing: name)) encountered and error: \(error)")
        }
    }

}

