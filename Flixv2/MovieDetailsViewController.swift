//
//  MovieDetailsViewController.swift
//  Flixv2
//
//  Created by Sunil Green on 1/23/19.
//  Copyright © 2019 Sunil Green. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var backdropview: UIImageView!
    @IBOutlet weak var posterview: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsislabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsislabel.text = movie["overview"] as? String
        synopsislabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterview.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["poster_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropview.af_setImage(withURL: backdropUrl!)
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
