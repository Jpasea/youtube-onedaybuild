//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Jake Pasea on 20/12/2021.
//


// git push https://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@github.com/Jpasea/youtube-onedaybuild.git

import UIKit

class ViewController: UIViewController {

    
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

