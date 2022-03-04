//
//  UserManager.swift
//  LessonWork3.3
//
//  Created by Олейник Богдан on 04.03.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
