//
//  MiniSongPlayerViewController.swift
//  apple-music-transition
//
//  Created by Jaromir Bergiel on 26/08/2019.
//  Copyright © 2019 devberg. All rights reserved.
//

import UIKit

protocol MiniSongPlayerDelegate: class {
    func expandSong(song: Song)
}

class MiniSongPlayerViewController: UIViewController {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var songTitleLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var fastForwardButton: UIButton!
    
    weak var delegate: MiniSongPlayerDelegate?
    var song: Song?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(withSong: song)
    }
    
    func configure(withSong song: Song? = nil) {
        guard let song = song else {
            setupEmptyUI()
            return
        }
        
        setupUI(withSong: song)
    }
    
    private func setupEmptyUI() {
        thumbImageView.image = Image.musicPlaceholder
        songTitleLabel.text = "Choose your song"
    }
    
    private func setupUI(withSong song: Song) {
        thumbImageView.image = Image.cdCover
        songTitleLabel.text = song.title
        
    }
}
