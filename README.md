# SF Public Art API

###(Day 1 of The Daily(ish) Project Series)

Here's a restful API that enables you to find information on civic artwork around San Francisco. The data comes from SF Open Data [ADD LINK]. We're hosted at [TKTKTK].

###/artworks/:id
This route returns a JSON object containing information about a single piece of art. It includes the work's address, latitude and longitude, title, dimensions, medium, donation or commission credit, and location name (i.e. "SF Airport" or "Ferry Building"). It also contains the ids for the work's artist(s) and neighborhood. See an example below:

```
{"id":50,"address":"1 Telegraph Hill Boulevard, San Francisco, CA 94133, USA",
"neighborhood_id":1,"latitude":37.8023686,"longitude":-122.4058194,
"title":"Home Life","dimensions":"9' X 34'","medium":"Egg tempura","artist_id":29,
"credit":"Commissioned for Coit Tower","created_at":"2015-07-14T21:52:35.971Z",
"updated_at":"2015-07-14T21:52:35.971Z","location_name":null}
```

### /artworks
This route returns a JSON object containing every piece of civic artwork in San Francisco, with complete information about each artwork. 


### /neighborhood/:id
This route returns a JSON object of complete details of every artwork within a given neighborhood.


### /neighborhoods
This route returns a JSON object of every SF neighborhood where public art has been commissioned. There are 51 in total. They are returned alphabetically so that users can easily find the neighborhood they're looking for, as well as its corresponding id.

### /artists
This route returns 





