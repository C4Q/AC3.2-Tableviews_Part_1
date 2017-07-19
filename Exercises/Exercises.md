# Exercises

### Intro To Tests

By the end of the first exercise, your `Movie` class should now include a new initializer called `init(title: String, year: Int, genre: String, cast: [String], locations: [String], summary: String) `:

```swift
class Movie {

	var title: String
	var year: Int
	var genre: String
	var cast: [String]
	var locations: [String]
	var summary: String

	init(title: String, year: Int, genre: String, cast: [String], locations: [String], summary: String) {
		self.title = title
		self.year = year
		self.genre = genre
		self.cast = cast
		self.locations = locations
		self.summary = summary
	}

	init() {
		self.title = ""
		self.year = 1970
		self.genre = ""
		self.cast = []
		self.locations = []
		self.summary = ""
	}
}
```

### Final Answer w/ Advanced Solutions

```swift
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

class Actor {

	var firstName: String
	var lastName: String

	init() {
		self.firstName = ""
		self.lastName = ""
	}

	init(firstName: String, lastName: String) {
		self.firstName = firstName
		self.lastName = lastName
	}

	convenience init(from string: String) {
		let nameComponents: [String] = string.components(separatedBy: " ")
		if let firstName: String = nameComponents.first,
			let lastName:String = nameComponents.last {
			self.init(firstName: firstName, lastName: lastName)
		}
		else {
			self.init()
		}

	}
}

class Movie {

	var title: String
	var year: Int
	var genre: String
	var cast: [String]
	var locations: [String]
	var summary: String

	init(title: String, year: Int, genre: String, cast: [String], locations: [String], summary: String) {
		self.title = title
		self.year = year
		self.genre = genre
		self.cast = cast
		self.locations = locations
		self.summary = summary
	}

	convenience init(from dict: [String : Any]) {
		if let movieTitle = dict["name"] as? String,
			let movieYear = dict["year"] as? Int,
			let movieGenre = dict["genre"] as? String,
			let movieCast = dict["cast"] as? [String],
			let movieLocations = dict["locations"] as? [String],
			let movieSummary = dict["description"] as? String {

			self.init(title: movieTitle, year: movieYear, genre: movieGenre, cast: movieCast, locations: movieLocations, summary: movieSummary)
		}
		else {
			self.init()
		}
	}

	init() {
		self.title = ""
		self.year = 1970
		self.genre = ""
		self.cast = []
		self.locations = []
		self.summary = ""
	}
}
```