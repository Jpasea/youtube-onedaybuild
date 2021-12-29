//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Jake Pasea on 20/12/2021.
//


// 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
// git push https://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@github.com/Jpasea/youtube-onedaybuild.git

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set itself as the datasource and the delegate
        tableView.delegate = self
        tableView.dataSource = self
        
        // Set itself as the delegate of the model
        model.delegate = self
        model.getVideos()
    }
}

//MARK: - Table View Methods

extension ViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
    }
    
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as! VideoTableViewCell
        
        // Configure the cell with the data
        
        let video = self.videos[indexPath.row]
        cell.setCell(video)
        
        // Return the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

//MARK: - Model Protocols

extension ViewController:ModelDelegate {
    
    func videosFetched(_ videos: [Video]) {
        
        // Set the returned videos to our video property
        self.videos = videos
        
        // Refresh the tableView
        tableView.reloadData()
        
    }
    
    
}
