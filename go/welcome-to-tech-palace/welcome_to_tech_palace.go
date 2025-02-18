package techpalace

import "strings"

// WelcomeMessage returns a welcome message for the customer.
func WelcomeMessage(customer string) string {
	return "Welcome to the Tech Palace, " + strings.ToUpper(customer)
}

// AddBorder adds a border to a welcome message.
func AddBorder(welcomeMsg string, numStarsPerLine int) string {
	my_str := ""
	for i := 0; i < numStarsPerLine; i++ {
		my_str += "*"
	}
	my_str += "\n"
	my_str += welcomeMsg
	my_str += "\n"
	for i := 0; i < numStarsPerLine; i++ {
		my_str += "*"
	}
	return my_str
}

// CleanupMessage cleans up an old marketing message.
func CleanupMessage(oldMsg string) string {
	oldMsg = strings.TrimLeft(oldMsg, "*\n ")
	oldMsg = strings.TrimRight(oldMsg, " \n*")
	return oldMsg
}
