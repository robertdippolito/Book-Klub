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
        testAPI()
    }
    
    func testAPI() {
        let session = URLSession.shared
        let client = GoogleBooksApiClient(session: session)
        let req = GoogleBooksApi.VolumeRequest.List(query: "Harry Potter")
        let task: URLSessionTask = client.invoke(
            req,
            onSuccess: { volumes in print("\(volumes)")},
            onError: { error in print("\(error)")}
        )
        task.resume()
    }


}

