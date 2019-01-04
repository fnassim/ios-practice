//
//  ViewController.swift
//  iOSPractice
//
//  Created by Fadel Nassim on 2/1/19.
//  Copyright © 2019 Fadel Nassim. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
   
    
    @IBOutlet weak var searchview: UISearchBar!
    @IBOutlet weak var tv: UITableView!
    
    var img = Image()
    
    func callApi(query: String){
        Alamofire.request("http://www.splashbase.co/api/v1/images/search?query=" + query).responseData { (resData) -> Void in
            print(resData.result.value!)
            self.img = try! JSONDecoder().decode(Image.self, from: resData.result.value!)
            self.tv.reloadData()
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchview.delegate = self
        tv.dataSource = self
        tv.delegate = self
        tv.separatorStyle = UITableViewCell.SeparatorStyle.none
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate,
UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        callApi(query: searchBar.text!)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
       performSegue(withIdentifier: "showDetails", sender: self)
       print(img.images[indexPath.row].url!)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let url = img.images[indexPath.row].url
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageItemCell") as! ImageTableViewCell
        cell.setImage(url: url!)
        return  cell
    }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return img.images.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController2 {
            destination.img = img.images[(tv.indexPathForSelectedRow?.row)!]
        }
    }
}
