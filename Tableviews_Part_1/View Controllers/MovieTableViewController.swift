//
//  MovieTableViewController.swift
//  Tableviews_Part_1
//
//  Created by Louis Tur on 9/20/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movieData: [Movie]!
	var presidentData: [Int : String] = presidentsByYear
	var nameTupleData: [(String, String)] = firstAndLastTuples
	var nameSingleString: [String] = firstAndLastStrings
	
    let cellIdentifier: String = "MovieTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Reel Good!"

		self.movieData = [
			Movie(title: "Rogue One", year: 2016, genre: "Sci-Fi", cast: [], locations: ["Space"], summary: "An awesome Star Wars movie"),
			Movie(title: "Wonder Woman", year: 2017, genre: "Superhero", cast: [], locations: ["Europe"], summary: "Wonder Woman fights evil, and wins.")
		]
		
		for i in movies {
			self.movieData.append(Movie(from: i))
		}
	
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		if section == 0 {
			return self.movieData.count
		}
		else if section == 1 {
			return self.nameSingleString.count
		}
		else if section == 2 {
			return self.nameTupleData.count
		}
		else {
			return self.presidentData.count
		}
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
		
		if indexPath.section == 0 {
			let cellMovie = self.movieData[indexPath.row]
			cell.textLabel?.text = "\(cellMovie.title) - \(cellMovie.year)"
			cell.detailTextLabel?.text = cellMovie.summary
		}
		else if indexPath.section == 1 {
			let cellName = self.nameSingleString[indexPath.row]
			let nameComponents = cellName.components(separatedBy: " ")
			cell.textLabel?.text = "\(nameComponents.first!) \(nameComponents.last!)"
			cell.detailTextLabel?.text = ""
		}
		else if indexPath.section == 2 {
			let cellTuple = self.nameTupleData[indexPath.row]
			cell.textLabel?.text = "\(cellTuple.0) \(cellTuple.1)"
			cell.detailTextLabel?.text = ""
		}
		else {
			let dictKeys = presidentData.keys.sorted()
			let cellYear = dictKeys[indexPath.row]
			let cellPresident = self.presidentData[cellYear]
			cell.textLabel?.text = "\(cellPresident!) - \(cellYear)"
			cell.detailTextLabel?.text = ""
		}
	
        return cell
    }

	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		if section == 0 {
			return "Movies"
		}
		else if section == 1 {
			return "Single String Names"
		}
		else if section == 2 {
			return "Tuple String Names"
		}
		else {
			return "President Info"
		}
	}
}
