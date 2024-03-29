//
//  AuthService.swift
//  SocialGPT
//
//  Created by Admin on 11/17/23.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class AuthService {
    
    let db = Firestore.firestore()
    
//    func checkUserExists(email: String) async throws -> Bool{
//        let documentSnapshot = db.collection("users").whereField("email", isEqualTo: email).count
//        let count = try await documentSnapshot.getAggregation(source: .server).count
//        return Int(truncating: count) > 0
//    }
    
    func checkUserExists(email: String) async throws -> Bool {
        let documentSnapshot = try await db.collection("users").whereField("email", isEqualTo: email).getDocuments()
        return !documentSnapshot.documents.isEmpty
    }
    
    func login(email: String, password: String, userExisits: Bool)  async throws -> AuthDataResult? {
        guard !password.isEmpty else { return nil}
        
        if userExisits {
            return try await Auth.auth().signIn(withEmail: email, password: password)
        } else {
            return try await Auth.auth().createUser(withEmail: email, password: password)
        }
    }
}
