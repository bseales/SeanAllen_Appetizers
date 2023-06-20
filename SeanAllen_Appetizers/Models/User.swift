//
//  User.swift
//  SeanAllen_Appetizers
//
//  Created by Batson Seales on 6/19/23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
