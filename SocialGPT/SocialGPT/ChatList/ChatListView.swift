//
//  ChatListView.swift
//  SocialGPT
//
//  Created by Admin on 11/17/23.
//

import SwiftUI

struct ChatListView: View {
    @StateObject var viewModel = ChatListViewModel()
    
    var body: some View {
        
        Group {
            switch viewModel.loadingState {
            case .loading, .none:
                Text("Loading chats...")
            case .noResult:
                Text("No chats.")
            case .resultFound:
                List {
                    ForEach(viewModel.chats) { chat in
                        NavigationLink(value: chat.id) {
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(chat.topic ?? "New Chat")
                                        .font(.headline)
                                    Spacer()
                                    Text(chat.model?.rawValue ?? "")
                                        .font(.caption2)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(chat.model?.tintColor ?? .white)
                                        .padding(6)
                                        .background((chat.model?.tintColor ?? .white).opacity(0.1))
                                        .clipShape(Capsule(style: .continuous))
                                    
                                }
                                Text(chat.lastMessageTimeAgo)
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                        }
                        .swipeActions {
                            Button(role: .descructive) {
                                viewModel.deleteChat(chat: chat)
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Chats")
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    viewModel.showProfile()
                } label: {
                    
                    Image(systemName: "person")
                }
            }
        })
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    viewModel.createChat()
                } label: {
                    // create  chat
                    Image(systemName: "square.and.pencil")
                }
            }
        })
        .sheet(isPresented: viewModel.ishShowingProfileView) {
            ProfileView()
        }
        .navigationDestination(for: String.self, destination: { chatId in ChatView(viewModel: .init(chatId: chatId))
        })
        .onAppear {
            if viewModel.loadingState == .none {
                viewModel.fetchData()
            }
        }
    }
}

struct ChatListView_Previews: PreviewProvider{
    static var previews: some View {
        ChatListView()
    }
    
}
