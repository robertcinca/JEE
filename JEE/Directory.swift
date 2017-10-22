//
//  LocationsTableViewController.swift
//  JEE
//
//  Created by UCL on 3/16/15.
//  Copyright (c) 2015 UCL. All rights reserved.
//

import UIKit

class LocationsTableViewController: UITableViewController {
    
    var places = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for landmark in locations {
            self.places.append(landmark.title + " " + landmark.subtitle)
        }
        
        self.places.sort { $0.localizedCaseInsensitiveCompare($1) == ComparisonResult.orderedAscending }

        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.places.count
    }
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        // Get the corresponding candy from our candies array
        let place = self.places[indexPath.row]
        
        // Configure the cell
        cell.textLabel!.text = place//.title
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let row = indexPath.row
        mostRecentLocation = places[row]
        userDefaults.set(mostRecentLocation, forKey: "recentLocation")
        self.tabBarController?.selectedIndex = 2
    }
}
