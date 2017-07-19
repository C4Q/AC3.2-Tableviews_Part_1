//
//  Tableviews_Part_1Tests.swift
//  Tableviews_Part_1Tests
//
//  Created by Louis Tur on 9/20/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import XCTest
@testable import Tableviews_Part_1

class Tableviews_Part_1Tests: XCTestCase {
	
	let allMovieData = movies
	let validTestData: [[String : Any]] = [
		[
			"name": "The Hunger Games",
			"year": 2012,
			"genre": "drama",
			"cast": ["Jennifer Lawrence", "Josh Hutcherson", "Liam Hemsworth"],
			"locations": ["New York", "Wisconsin"],
			"description": "Katniss Everdeen voluntarily takes her younger sister\'s place in the Hunger Games"
		],
		[
			"name": "American Sniper",
			"year": 2014,
			"genre": "drama",
			"cast": ["Bradley Cooper", "Sienna Miller", "Kyle Gallner"],
			"locations": ["Los Angeles", "Detroit", "Morocco"],
			"description": "Navy S.E.A.L. sniper Chris Kyle\'s pinpoint accuracy saves countless lives"
		]
	]
	
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
	
	func test_Default_Movie_Init() {
//		let testMovie = Movie()
//
//		XCTAssertTrue(testMovie.title == "", "A default init of movie should have an empty sting for title")
//		XCTAssertTrue(testMovie.genre == "", "A default init of movie should have an empty sting for genre")
//		XCTAssertTrue(testMovie.year == 1970, "A default init of movie should have a year of 1970")
//		XCTAssertTrue(testMovie.locations == [], "A default init of movie should have an empty string array for locations")
//		XCTAssertTrue(testMovie.cast == [], "A default init of movie should have an empty string array for actors")
//		XCTAssertTrue(testMovie.summary == "", "A default init of movie should have an empty sting for summary")
	}
	
	func test_Full_Movie_Init() {
//		let testMovie = Movie(title: "Rogue One",
//		                      year: 2016,
//		                      genre: "Sci-Fi",
//		                      cast: ["Felicity Jones", "Diego Luna", "Donnie Yen", "Forest Whitaker"],
//		                      locations: ["Far-away Galaxy"],
//		                      summary: "All looks lost for the Rebellion...")
//
//		XCTAssertTrue(testMovie.title == "Rogue One")
//		XCTAssertTrue(testMovie.genre == "Sci-Fi")
//		XCTAssertTrue(testMovie.year == 2016)
//		XCTAssertTrue(testMovie.locations == ["Far-away Galaxy"])
//		XCTAssertTrue(testMovie.cast == ["Felicity Jones", "Diego Luna", "Donnie Yen", "Forest Whitaker"])
//		XCTAssertTrue(testMovie.summary == "All looks lost for the Rebellion...")
	}
	
	func test_Default_Actor_Init() {
//		let testActor = Actor()
//
//		XCTAssertTrue(testActor.firstName == "", "The default init of Actor should have a blank firstname")
//		XCTAssertTrue(testActor.lastName == "", "The default init of Actor should have a blank lastname")
	}
	
	func test_Full_Actor_Init() {
//		let testActor = Actor(firstName: "Felicity", lastName: "Jones")
//
//		XCTAssertTrue(testActor.firstName == "Felicity")
//		XCTAssertTrue(testActor.lastName == "Jones")
	}
	
	func test_Actor_Membership_In_Movie_Parsing() {
//		let testMovie = Movie(title: "Rogue One",
//		                      year: 2016,
//		                      genre: "Sci-Fi",
//		                      cast: ["Felicity Jones"],
//		                      locations: ["Far-away Galaxy"],
//		                      summary: "All looks lost for the Rebellion...")
//
//		let searchResult = testMovie.cast.contains { (actor: String) -> Bool in
//			return actor == "Felicity Jones"
//		}
//
//		XCTAssertTrue(searchResult, "A movie that is initialized should have the right actors in its cast property")
	}
	
	func test_Movie_Parsing_From_Valid_Data() {
//		var movies: [Movie] = []
//		for validMovieData in validTestData {
//			let newMovie: Movie = Movie(from: validMovieData)
//			movies.append(newMovie)
//
//			XCTAssertFalse(newMovie.title.isEmpty, "Valid movie data should create a valid movie with a non-empty title string")
//		}
//
//		XCTAssertTrue(movies.count == 2, "There should be two valid movies. Actual: \(movies.count)")
	}
	
	func test_Sample_Movie_Parsed_Count () {
//		var allMovies: [Movie] = []
//		for movieData in allMovieData {
//			allMovies.append(Movie(from: movieData))
//		}
//		XCTAssertTrue(allMovies.count == 9, "There should be nine movies in our test database. Actual: \(allMovies.count)")
	}
	
	func test_Hunger_Games_Membership_When_Data_Parsed() {
//		var allMovies: [Movie] = []
//		for movieData in allMovieData {
//			allMovies.append(Movie(from: movieData))
//		}
//		
//		let hungerGames = Movie()
//		hungerGames.title = "The Hunger Games"
//		hungerGames.year = 2012
//		hungerGames.genre = "drama"
//		hungerGames.cast = ["Jennifer Lawrence", "Josh Hutcherson", "Liam Hemsworth"]
//		hungerGames.locations = ["New York", "Wisconsin"]
//		hungerGames.summary = "Katniss Everdeen voluntarily takes her younger sister\'s place in the Hunger Games"
//		
//		let searchResult = allMovies.contains { (movie: Movie) -> Bool in
//			if movie.title == "The Hunger Games" {
//				return true
//			}
//			return false
//		}
//		
//		XCTAssertTrue(searchResult, "Hunger games should have been found during a filter of the movies array")
	}
	
}
