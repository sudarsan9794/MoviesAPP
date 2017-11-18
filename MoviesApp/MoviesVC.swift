//
//  MoviesVC.swift
//  MoviesApp
//
//  Created by sudarsan on 11/17/17.
//  Copyright © 2017 sudarsan. All rights reserved.
//

import UIKit

class MoviesVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var movie:Movielist!

    var movieslist = [Movielist]()
    @IBOutlet weak var spinner: UIActivityIndicatorView!

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        spinner.startAnimating()

        fetchdmovies()

    }
    func fetchdmovies(){
        let url:String = "https://api.themoviedb.org/4/list/1?page=1&api_key=1fb1e3ef2eb4ae9768fa644588bab3db&sort_by=title.asc"
        let urlRequest = URL(string: url)
        let task = URLSession.shared.dataTask(with: urlRequest!) { (data, response, error) in
            if (error == nil){

                do{

                     let movielist = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String,AnyObject>
                    if let movies = movielist["results"] as? [Dictionary<String,AnyObject>]{

                        for obj in movies{

                            let movieList = Movielist(MovieDict: obj)

                            self.movieslist.append(movieList)

                }
                        DispatchQueue.main.async {
                            self.collectionView.reloadData()
                            self.spinner.stopAnimating()
                            self.spinner.hidesWhenStopped = true

                        }
                   
                    }
                    
                }catch let err as NSError{
                    print(err)

                }
            }else{
                print(error.debugDescription)
                
            }
        }
        task.resume()
    }
    


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieslist.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moviesCell", for: indexPath) as? moviesCollectionViewCell{

            let item = movieslist[indexPath.row]
            cell.configureCell(movie: item)

        return cell
        }
        return moviesCollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = movieslist[indexPath.row]
        performSegue(withIdentifier: "movieDetailVC", sender: item)

       
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "movieDetailVC" {
            if let detailVC = segue.destination as? DeatailMovieVC{
                if let item = sender as? Movielist{
                    detailVC.movielist = item

                }
                    
                }

            }

    }

}

