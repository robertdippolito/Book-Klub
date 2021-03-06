//
//  ViewController.swift
//  Book-Klub
//
//  Created by Robert D'Ippolito on 2018-03-11.
//  Copyright © 2018 Robert D'Ippolito. All rights reserved.
//

import UIKit
import GoogleBooksApiClient
import Alamofire
import AlgoliaSearch

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testAPI()
    }
    
    func testAPI() {
        let session = URLSession.shared
        let client = GoogleBooksApiClient(session: session)
        let req = GoogleBooksApi.VolumeRequest.List(query: "Rich Dad, Poor Dad")
        let task: URLSessionTask = client.invoke(
            req,
            onSuccess: { volumes in print("\(volumes)")},
            onError: { error in print("\(error)")}
        )
        task.resume()
    }


}

