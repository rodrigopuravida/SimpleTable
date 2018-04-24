//
//  ViewController.swift
//  SimpleTable
//
//  Created by Rodrigo Carballo on 4/21/18.
//  Copyright © 2018 Rodrigo Carballo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia","Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "PetiteOyster", "ForKeeRestaurant", "PosAtelier", "BourkeStreetBakery", "HaighsChocolate", "PalominoEspresso", "Upstate", "Traif", "GrahamAvenueMeats", "WaffleWolf", "FiveLeaves", "CafeLore", "Confessional", "Barrafina", "Donostia","RoyalOak", "CASKPubKitchen"]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell =  tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        //configure the cell
        cell.textLabel?.text = restaurantNames[indexPath.row]
        
        cell.imageView?.image = UIImage(named: restaurantImages[indexPath.row].lowercased())
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }


}

