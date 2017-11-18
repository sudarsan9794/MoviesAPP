//
//  moviesCollectionViewCell.swift
//  MoviesApp
//
//  Created by sudarsan on 11/17/17.
//  Copyright © 2017 sudarsan. All rights reserved.
//

import UIKit

class moviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var movieImage: UIImageView!

    @IBOutlet weak var movieTitleLbl: UILabel!

    func configureCell(movie: Movielist){

        movieTitleLbl.text = movie.movietitle
        movieImage.image = UIImage(named: movie.movieImage!)
       


    }





    
}
