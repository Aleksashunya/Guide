//
//  UserViewModel.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import Foundation

final class UserViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var id: Int = 0
    @Published var clients: [Client]? = []
    @Published var tasks: [Task]? = []
    @Published var events: [Event]? = []
    @Published var fullName = ""
    
    private let repository: UserRepositoryProtocol
    
    init(repository: UserRepositoryProtocol = UserRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        repository.fetchUser { user in
            self.name = user.name
            self.lastName = user.lastName
            self.fullName = user.fullName
            self.email = user.email
            self.id = user.id
            self.clients = user.clients
            self.tasks = user.tasks
            self.events = user.events
            self.fullName = user.fullName
        }
    }
    
}
