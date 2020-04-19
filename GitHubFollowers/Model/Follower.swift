//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Russell Archer on 09/04/2020.
//  Copyright © 2020 Russell Archer. All rights reserved.
//

/*
 
 Example of Follower data returned by curl https://api.github.com/users/russell-archer/followers
 
 [
 {
   "login": "GlennMartin75",
   "id": 20227885,
   "node_id": "MDQ6VXNlcjIwMjI3ODg1",
   "avatar_url": "https://avatars3.githubusercontent.com/u/20227885?v=4",
   "gravatar_id": "",
   "url": "https://api.github.com/users/GlennMartin75",
   "html_url": "https://github.com/GlennMartin75",
   "followers_url": "https://api.github.com/users/GlennMartin75/followers",
   "following_url": "https://api.github.com/users/GlennMartin75/following{/other_user}",
   "gists_url": "https://api.github.com/users/GlennMartin75/gists{/gist_id}",
   "starred_url": "https://api.github.com/users/GlennMartin75/starred{/owner}{/repo}",
   "subscriptions_url": "https://api.github.com/users/GlennMartin75/subscriptions",
   "organizations_url": "https://api.github.com/users/GlennMartin75/orgs",
   "repos_url": "https://api.github.com/users/GlennMartin75/repos",
   "events_url": "https://api.github.com/users/GlennMartin75/events{/privacy}",
   "received_events_url": "https://api.github.com/users/GlennMartin75/received_events",
   "type": "User",
   "site_admin": false
 },
 {
   "login": "AndiChiou",
   "id": 23460812,
   "node_id": "MDQ6VXNlcjIzNDYwODEy”,
   :
   :
 
    We define a Follower struct that will be used to present a small subset of the JSON data returned by the GitHub API.
 
 */

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String   // Note that the JSON field will be named avatar_url ("snake case") but JSONDecoder can
                            // automatically convert avatar_url to avatarUrl (camel case). 
                            // See JSONDecord.convertFromSnakeCase
}
