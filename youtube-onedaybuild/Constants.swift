//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Jake Pasea on 22/12/2021.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyAOh6RKNhGtn0m1fk3xBS2SXShR1k4AH4c"
    static var PLAYLIST_ID = "PLMRqhzcHGw1Z-lZaaun3A3mV9PbEfHANI"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
    static var VIDEOCELL_ID = "VideoCell"
}
