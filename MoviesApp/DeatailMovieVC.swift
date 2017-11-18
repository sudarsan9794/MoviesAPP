//
//  DeatailMovieVC.swift
//  MoviesApp
//
//  Created by sudarsan on 11/17/17.
//  Copyright © 2017 sudarsan. All rights reserved.
//

import UIKit

class DeatailMovieVC: UIViewController {
    var movielist:Movielist!
    @IBOutlet weak var movieName: UILabel!

    @IBOutlet weak var descrtiptionLbl: UILabel!

    @IBOutlet weak var movieImage: UIImageView!

    @IBOutlet weak var releasedateLbl: UILabel!

    @IBOutlet weak var ratingLbl: UILabel!




    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI(){
        movieName.text = movielist.movietitle
        descrtiptionLbl.text = movielist.moviedescription
        movieImage.image = UIImage(named: movielist.movieImage!)
        releasedateLbl.text = movielist.release_date
        ratingLbl.text = "\(movielist.rating!)"

    }

    @IBAction func backtologinBtn(_ sender: Any) {
        performSegue(withIdentifier: "logoutVC", sender: nil)
    }

    @IBAction func backtoMoviesBtn(_ sender: Any) {
   dismiss(animated: true, completion: nil)
    }



}
