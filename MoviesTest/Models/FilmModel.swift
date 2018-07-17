//
//  FilmModel.swift
//  MoviesTest
//
//  Created by  Anita on 7/16/18.
//  Copyright © 2018  Anita. All rights reserved.
//

import Foundation

struct FilmsModel : Codable {
    var results: [ResultsModel]
}


struct ResultsModel: Codable{
    let id: Int
    let popularity: Double
    let posterPath, originalLanguage, originalTitle: String
    let overview, releaseDate: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case popularity
        case posterPath = "poster_path"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case releaseDate = "release_date"
    }
}




struct FilmsTrailerModel : Codable {
    var results: [ResultsTrailerModel]
}

struct ResultsTrailerModel : Codable {
    let id: String
//    let iso_639_1: String
//    let iso_3166_1: String
    let key: String
    let name: String
    let site: String
    let size: Int
    let type:String

}