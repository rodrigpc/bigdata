
ratings = LOAD '/user/maria_dev/data/u.data' AS (userID:int, movieID:int, rating:int, ratingTime:int);
/* This creates a relation named “ratings” with a given schema.
(660,229,2,891406212)
(421,498,4,892241344)
(495,1091,4,888637503)
(806,421,4,882388897)
(676,538,4,892685437)
(721,262,3,877137285)
*/

metadata = LOAD '/user/maria_dev/data/u.item' USING PigStorage('|')AS (movieID:int, movieTitle:chararray, releaseDate:chararray, videoRelease:chararray, imdbLink:chararray);
-- Use PigStorage if you need a different delimiter.

nameLookup = FOREACH metadata GENERATE movieID, movieTitle, ToUnixTime(ToDate(releaseDate, 'dd-MMM-yyyy')) AS releaseTime;
-- Creating a relation from another relation; FOREACH / GENERATE

ratingsByMovie = GROUP ratings BY movieID;
-- GROUP BY

avgRatings = FOREACH ratingsByMovie GENERATE group AS movieID, AVG(ratings.rating) AS avgRating;
-- For each movie generates average rating. The word 'group' from ratingsByMovie is replaced by 'movieID'

fiveStarMovies = FILTER avgRatings BY avgRating > 4.0;

fiveStarsWithData = JOIN fiveStarMovies BY movieID, nameLookup BY movieID;
-- put everything together joined by movieID

oldestFiveStarMovies = ORDER fiveStarsWithData BY nameLookup::releaseTime;
-- sorts movies by releaseTime

DUMP oldestFiveStarMovies;
