//
//  ContentViewViewModel.swift
//  EmpowerED-Lib
//
//  Created by Willie Bless Daniels on 22/07/2024.
//

import FirebaseAuth
import Foundation

class ContentViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
