//
//  RegisterView.swift
//  LessonWork3.3
//
//  Created by Олейник Богдан on 04.03.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            ExtractedView(
                name: $userManager.user.name,
                nameIsValid: userManager.nameIsValid
            )
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(!userManager.nameIsValid)
        }
        .padding()
    }
}

extension RegisterView {
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegistered.toggle()
            DataManager.shared.saveUser(user: userManager.user)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

struct ExtractedView: View {
    
    @Binding var name: String
    var nameIsValid = false
    
    var body: some View {
        ZStack {
            TextField("Type your name...", text: $name)
                .multilineTextAlignment(.center)
            HStack {
                Spacer()
                Text("\(name.count)")
                    .font(.callout)
                    .foregroundColor(nameIsValid ? .green : .red)
                    .padding([.top, .trailing])
            }
            .padding(.bottom)
        }
    }
}
