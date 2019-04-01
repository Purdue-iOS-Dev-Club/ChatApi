//
//  Message.swift
//  App
//
//  Created by Harjas Monga on 4/1/19.
//

import Foundation
import FluentSQLite
import Vapor

final class Message: SQLiteModel, Migration, Content, Parameter {
    
    var id: Int?
    
    var author: String
    var message: String
    var sentTime: Date?
    
    init(author: String, message: String) {
        self.author = author
        self.message = message
    }
    
}
