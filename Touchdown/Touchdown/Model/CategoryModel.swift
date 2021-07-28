//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Zdenko Čepan on 28/07/2021.
//

import Foundation

struct Category: Identifiable, Codable {
    let id: Int
    let name: String
    let image: String
}
