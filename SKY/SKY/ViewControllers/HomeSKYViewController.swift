//
//  HomeSKYViewController.swift
//  SKY
//
//  Created by Andre Guedes on 24/06/17.
//  Copyright © 2017 Andre Guedes. All rights reserved.
//

import UIKit

class HomeSKYViewController: BaseViewController {
    
    var dataProvider: MovieDataProvider?
    var viewModel: MovieViewModel?
    
    @IBOutlet weak var loadingView: LoadingView!
    @IBOutlet weak var moviesCollection: UICollectionView!
    
    @IBAction func tappedRefresh(_ sender: UIBarButtonItem) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.moviesCollection.register(UINib(nibName: "MovieCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MovieCollectionViewCell")
        
        self.dataProvider = MovieDataProvider()
        self.dataProvider?.delegate = self
        self.moviesCollection.dataSource = self
        self.loadingView.showLoading()
        self.dataProvider?.getAllMovies()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
