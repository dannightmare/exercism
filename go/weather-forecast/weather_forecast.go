// Package weather 
// this package finds the current weather.
package weather

// CurrentCondition represents the current state of weather.
var CurrentCondition string
// CurrentLocation represents the current location.
var CurrentLocation string

// Forecast takes the city and condition and returns a string referring to it.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
