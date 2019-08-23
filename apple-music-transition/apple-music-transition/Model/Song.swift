//
//  Song.swift
//  apple-music-transition
//
//  Created by Jaromir Bergiel on 24/08/2019.
//  Copyright © 2019 devberg. All rights reserved.
//

import Foundation

struct Song {
    let title: String
    var duration: TimeInterval = 0
    let artist: String
    var mediaURL: URL?
    var coverArtURL: URL?
    
    static func mock() -> Song {
        return Song(title: "Wiosna wiosna",
                    duration: 3.5,
                    artist: "Marek Grechuta",
                    mediaURL: URL(string: "XYZ"),
                    coverArtURL: URL(string: "XYZ")
        )
    }
}
