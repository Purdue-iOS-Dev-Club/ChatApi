//
//  ChatController.swift
//  App
//
//  Created by Harjas Monga on 4/1/19.
//

import Foundation
import Vapor

final class ChatController {
    
    func getMessage(_ req: Request) throws -> Future<[Message]> {
        let id = try req.parameters.next(Int.self)

        let requestedMessages = Message.query(on: req).filter(\Message.id, .greaterThan, id).all()
        return requestedMessages
    }
    
    func recieveNewMessage(_ req: Request) throws -> Future<Message> {
        return try req.content.decode(Message.self).flatMap({ (message) -> EventLoopFuture<Message> in
            message.sentTime = Date()
            return message.save(on: req)
        })
    }
    
}
