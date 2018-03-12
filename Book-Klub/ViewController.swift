//
//  ViewController.swift
//  Book-Klub
//
//  Created by Robert D'Ippolito on 2018-03-11.
//  Copyright © 2018 Robert D'Ippolito. All rights reserved.
//

import UIKit
import GoogleBooksApiClient

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello World!")
        let session = URLSession.shared
        let client = GoogleBooksApiClient(session: session)
    }


}

