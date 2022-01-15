//
//  DatFactory.swift
//  Wsiw
//
//  Created by Yavuz Selim Bitmez  on 2.01.2022.
//

import Foundation

struct Films {
    var posterLink = ""
    var seriesTitle = ""
    var releasedYear = ""
    var certificate = ""
    var runtime = ""
    var genre = ""
    var imdbRating = ""
    var overview = ""
    var metaScore = ""
    var director = ""
    var star1 = ""
    var star2 = ""
    var star3 = ""
    var star4 = ""
    var noOfVotes = ""
    var gross = ""

    init(raw: [String]) {
        posterLink = raw[0]
        seriesTitle = raw[1]
        releasedYear = raw[2]
        certificate = raw[3]
        runtime = raw[4]
        genre = raw[5]
        imdbRating = raw[6]
        overview = raw[7]
        metaScore = raw[8]
        director = raw[9]
        star1 = raw[10]
        star2 = raw[11]
        star3 = raw[12]
        star4 = raw[13]
        noOfVotes = raw[14]
        gross = raw[15]
    }
}

func loadCSV(from csvName: String) -> [Films] {
    var csvToStruct = [Films]()
    guard let filePath = Bundle.main.path(forResource: csvName, ofType: "csv") else {
        return []
    }
    var data = ""
    do {
        data = try String(contentsOfFile: filePath)
    } catch {
        print(error)
        return []
    }
    var rows = data.components(separatedBy: .newlines)
    rows.removeFirst()
    rows.removeLast()
    for row in rows {
        let csvColumns = row.components(separatedBy: "*")
        let filmStruct = Films.init(raw: csvColumns)
        csvToStruct.append(filmStruct)
    }
    return csvToStruct
}
