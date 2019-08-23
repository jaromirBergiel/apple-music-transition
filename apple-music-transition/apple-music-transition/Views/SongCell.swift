//
//  SongCell.swift
//  apple-music-transition
//
//  Created by Jaromir Bergiel on 23/08/2019.
//  Copyright © 2019 devberg. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {

    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var artistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(withSong song: Song) {
//        self.songImage = song.coverArtURL
        self.songTitle.text = song.title
        self.artistName.text = song.artist
    }
}
