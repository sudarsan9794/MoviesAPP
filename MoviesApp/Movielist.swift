//
//  Movielist.swift
//  MoviesApp
//
//  Created by sudarsan on 11/17/17.
//  Copyright © 2017 sudarsan. All rights reserved.
//

import UIKit

class Movielist: NSObject {

    var movieImage:String?
    var release_date:String?
    var movietitle:String?
    var backgroundImage:String?
    var moviedescription:String?
    var rating:Double?

    init(MovieDict:Dictionary<String,AnyObject>){

        if let movieTitle = MovieDict["title"] as? String{
            self.movietitle = movieTitle
        }
        if let movieimage = MovieDict["poster_path"] as? String{
            var movieIcon = movieimage
            if let i = movieIcon.characters.index(of: "/"){
                movieIcon.remove(at: i)
            }
           self.movieImage = movieIcon

        }
        if let movierating = MovieDict["vote_average"] as? Double{
            self.rating = movierating
        }
            
       if let movieDate = MovieDict["release_date"] as? String{
            self.release_date = movieDate
        }
        if let movieDes = MovieDict["overview"] as? String{
            self.moviedescription = movieDes
        }
        if let backgroundimage = MovieDict["backdrop_path"] as? String{
            self.backgroundImage = backgroundimage
        }

    }

}
