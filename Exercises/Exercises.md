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