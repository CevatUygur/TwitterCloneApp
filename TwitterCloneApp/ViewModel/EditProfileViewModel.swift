//
//  EditProfileViewModel.swift
//  TwitterCloneApp
//
//  Created by CEVAT UYGUR on 14.01.2023.
//

import Foundation

enum EditProfileOptions: Int, CaseIterable {
    case fullname
    case username
    case bio
    
    var description: String {
        switch self {
        case .username: return "Username"
        case .fullname: return "Name"
        case .bio: return "Bio"
        }
    }
}
