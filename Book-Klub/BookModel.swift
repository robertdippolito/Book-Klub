//
//  BookModel.swift
//  Book-Klub
//
//  Created by Robert D'Ippolito on 2018-03-12.
//  Copyright © 2018 Robert D'Ippolito. All rights reserved.
//

import Foundation

class BookModel {
    
    let title: String?
    let authors: String?
    
    struct bookKeys {
        static let title = "title"
        static let authors = "authors"
    }
    
    init(bookDictionary: [String : Any]) {
        title = bookDictionary[bookKeys.title] as? String
        authors = bookDictionary[bookKeys.authors] as? String
    }
    
}

