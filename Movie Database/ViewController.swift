//
//  ViewController.swift
//  Movie Database
//
//  Created by Muqadus on 15/4/19.
//  Copyright © 2019 Muqadus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var URL: UITextField!
    @IBOutlet weak var Authorisation: UITextField!
    @IBOutlet weak var Headers: UITextField!
    @IBOutlet weak var Body: UITextField!
    @IBOutlet weak var HTTPMethod: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        var urlText = URL.text
//        var authorisationText = Authorisation.text
//        var headersText = Headers.text
//        var bodyText = Body.text
//        var httpMethodText = HTTPMethod.text
        self.Headers.isUserInteractionEnabled = false
        self.Body.isUserInteractionEnabled = false
        self.HTTPMethod.isUserInteractionEnabled = false
    }


}

