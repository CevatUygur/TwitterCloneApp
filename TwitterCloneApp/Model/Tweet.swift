//
//  Tweet.swift
//  TwitterCloneApp
//
//  Created by CEVAT UYGUR on 25.12.2022.
//

import Firebase

struct Tweet {
    let caption: String
    let tweetID: String
    let uid: String
    var likes: Int
    var timestamp: Date!
    let retweetCount: Int
    let user: User
    var didLike = false
    
    init(user: User, tweetID: String, dictionary: [String: Any]) {
        self.tweetID = tweetID
        self.user = user
        
        self.caption = dictionary["caption"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.retweetCount = dictionary["retweetCount"] as? Int ?? 0
        
        if let timestamp = dictionary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
    }
    
}
