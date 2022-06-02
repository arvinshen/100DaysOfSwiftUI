# Moonshot


<!-- Table of Contents -->
## Table of Contents
* [About The Project](#about-the-project)
* [Concepts Utilized](#concepts-utilized)
* [Screenshots](#screenshots)
* [Acknowledgements](#acknowledgements)


<!-- ABOUT THE PROJECT -->
## About The Project

Moonshot is an app that contains the latest information about the missions and astronauts that formed NASA's Apollo space program.

#### [Challenges](https://www.hackingwithswift.com/books/ios-swiftui/moonshot-wrap-up)
>1. Add the launch date to MissionView, below the mission badge. You might choose to format this differently given that more space is available, but it’s down to you.
>2. Extract one or two pieces of view code into their own new SwiftUI views – the horizontal scroll view in MissionView is a great candidate, but if you followed my styling then you could also move the Rectangle dividers out too.
>3. For a tough challenge, add a toolbar item to ContentView that toggles between showing missions as a grid and as a list.
>
>Tip: For that last one, your best bet is to make all your grid code and all your list code two separate views, and switch between them using an if condition in ContentView. You can’t attach SwiftUI modifiers to an if condition, but you can wrap that condition in a Group then attach modifiers to there, like this:
>
>Group {  
&nbsp;&nbsp;&nbsp;&nbsp;    if showingGrid {
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        GridLayout(astronauts: astronauts, missions: missions)
&nbsp;&nbsp;&nbsp;&nbsp;    } else {
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        ListLayout(astronauts: astronauts, missions: missions)
&nbsp;&nbsp;&nbsp;&nbsp;    }
}
.navigationTitle("My Group")
>
>You might hit some speed bumps trying to style your list, because they have a particular look and feel on iOS by default. Try attaching .listStyle(.plain) to your list, then something like .listRowBackground(Color.darkBackground) to the contents of your list row – that should get you a long way towards your goal.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- CONCEPTS UTILIZED -->
## Concepts Utilized
* GeometryReader
* ScrollView
* NavigationLink
* Codable

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- SCREENSHOTS -->
## Screenshots
In Progress

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
Hacking With Swift - [100 Days of SwiftUI] by Paul Hudson

Project 8 - Moonshot is coded in correspondence to the following days:
* [Day 39]
* [Day 40]
* [Day 41]
* [Day 42] - Challenge Day

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[100 Days of SwiftUI]: https://www.hackingwithswift.com/100/swiftui (100 Days of SwiftUI)
[Day 39]: https://www.hackingwithswift.com/100/swiftui/39
[Day 40]: https://www.hackingwithswift.com/100/swiftui/40
[Day 41]: https://www.hackingwithswift.com/100/swiftui/41
[Day 42]: https://www.hackingwithswift.com/100/swiftui/42
