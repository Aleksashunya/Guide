//
//  ShortInfoView.swift
//  Guide
//
//  Created by Александра Мельникова on 05.10.2021.
//

import SwiftUI

struct ShortInfoView: View {
    @StateObject private var userViewModel = UserViewModel()
    
    var body: some View {
        HStack {
            Spacer()
            Text("Пользователь:")
            Text("\(userViewModel.fullName)")
                .font(.title3)
        }
        .padding(.trailing)
        .onAppear {
            userViewModel.onAppear()
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ShortInfoView()
    }
}
