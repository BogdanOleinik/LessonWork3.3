//
//  UserManager.swift
//  LessonWork3.3
//
//  Created by Олейник Богдан on 04.03.2022.
//

import Combine

final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}
