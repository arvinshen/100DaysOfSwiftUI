# WeSplit


<!-- Table of Contents -->
## Table of Contents
* [About The Project](#about-the-project)
* [Concepts Utilized](#concepts-utilized)
* [Screenshots](#screenshots)
* [Acknowledgements](#acknowledgements)


<!-- ABOUT THE PROJECT -->
## About The Project

WeSplit is a check-sharing app that calculates how to split a check based on the number of people and how much tip you want to leave.

#### [Challenges](https://www.hackingwithswift.com/guide/ios-swiftui/wesplit-wrap-up)
>1. Add a header to the third section, saying “Amount per person”
>2. Add another section showing the total amount for the check – i.e., the original amount plus tip value, without dividing by the number of people.
>3. Change the tip percentage picker to show a new screen rather than using a segmented control, and give it a wider range of options – everything from 0% to 100%. Tip: use the range 0..<101 for your range rather than a fixed array.
>
>And if you found those easy, here’s a tough one for you: rather than having to type .currency(code: Locale.current.currencyCode ?? "USD") in two places, can you make a new property to store the currency formatter? You’ll need to give your property a specific return type in order to keep the rest of your code happy: FloatingPointFormatStyle<<Double>Double>.Currency.
>
>You can find that for yourself using Xcode’s Quick Help window – open up the right-hand navigator, then select the Quick Help inspector, and finally click select the .currency code. You’ll see Xcode displays <<Value>Value> rather than <<Double>Double>, because this thing is able to display other kinds of floating-point numbers too, but here we need Double.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONCEPTS UTILIZED -->
## Concepts Utilized
* Form
* NavigationView
* @State / @FocusState
* Picker
* ForEach

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- SCREENSHOTS -->
## Screenshots
In Progress

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
Hacking With Swift - [100 Days of SwiftUI] by Paul Hudson

Project 1 - WeSplit is coded in correspondence to the following days:
* [Day 16]
* [Day 17]
* [Day 18] - Challenge Day

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[100 Days of SwiftUI]: https://www.hackingwithswift.com/100 (100 Days of SwiftUI)
[Day 16]: https://www.hackingwithswift.com/100/swiftui/16
[Day 17]: https://www.hackingwithswift.com/100/swiftui/17
[Day 18]: https://www.hackingwithswift.com/100/swiftui/18
