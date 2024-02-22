//
//  ExploreViewModel.swift
//  Threads Clone
//
//  Created by Sandip Kumar Dey on 20/12/23.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
