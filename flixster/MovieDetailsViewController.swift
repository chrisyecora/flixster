//
//  MovieDetailsViewController.swift
//  flixster
//
//  Created by Christopher Yecora on 9/13/21.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    
    
    
    @IBOutlet weak var backdropview: UIImageView!
    @IBOutlet weak var posterview: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie: [String:Any]!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        
        let baseURL = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        posterview.af.setImage(withURL: posterURL!)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w1280" + backdropPath)
        
        backdropview.af.setImage(withURL: backdropURL!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
