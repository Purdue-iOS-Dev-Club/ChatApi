import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    let chatApi = ChatController()
    router.get("messages", Int.parameter, use: chatApi.getMessage)
    router.post("messages", use: chatApi.recieveNewMessage)

}
