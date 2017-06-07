//
//  ViewController.swift
//  disrupt
//
//  Created by Annette Chen on 6/7/17.
//  Copyright © 2017 Annette Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var api = GetBusinesses()
//    var location = Location()
//    location.getCurrentLocation()
//    api.latitude = location.latitude
//    api.longitude = location.longitude
//    
    @IBOutlet weak var userTextField:UITextField!
    @IBOutlet weak var passwordTextField:UITextField!
    
    @IBAction func callAPI(_ sender: Any) {
        api.getInfoFromAPI {
            print("helloo")
        }
    }
    
    @IBAction func loginWasTapped(_ sender: Any) {
        if let username = userTextField.text{
            print("user \(username) logged in")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("app is loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

