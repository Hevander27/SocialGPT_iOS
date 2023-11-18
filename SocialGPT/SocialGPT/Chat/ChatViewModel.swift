//
//  ChatViewModel.swift
//  SocialGPT
//
//  Created by Admin on 11/18/23.
//

import Foundation
import OpenAI


class ChatViewModel: ObservableObject {
    @Published var chat: AppChat?
    @Published var messages: [AppMessage] = []
    @Published var messageText: String = ""
    @Published var selectedModel: ChatModel = .gpt3_5_turbo
    let chatId: String
    
    init(chatId: String) {
        self.chatId = chatId
    }
    
    func fetchData() {
        self.messages = [
            AppMessage(id: "1", text: "Hello how are you", role: .user, createdAt: Date()),
            AppMessage(id: "2", text: "I'm good thanks", role: .assistant, createdAt: Date())
            
        ]
    }
    
    func sendMessage() { 
        let newMessage = AppMessage(id: UUID().uuidString, text: messageText, role: .user, createdAt: Date())
        messages.append(newMessage)
        messageText = ""
    }
}




struct AppMessage: Identifiable, Codable, Hashable {
    let id: String?
    var text: String
    let role: Chat.Role
    let createdAt: Date
}
