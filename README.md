# TapGrid

## Overview

TapGrid is a UI challenge for CS 458, where the main task is to augment a UIView subclass to respond to tap events. The application features a grid where each cell tracks and displays the number of times it has been tapped.

## Features

- **Dynamic Interaction**: Each cell within the grid increases its count on being tapped, resetting after reaching 9.
- **UI Responsiveness**: The grid ignores taps that occur outside of any cell, ensuring that interaction is restricted to grid elements only.
- **Self-contained Logic**: All functionality is encapsulated within a single UIView subclass, without modifications to the main Activity or ViewController.

## Requirements

- The grid displays a count of taps for each cell, starting from 0.
- Taps are counted only when they land within a cell.
- Each cell's count resets to 0 after reaching 9.

## Project Setup

To set up the project on your local machine:

1. **Clone the Repository**: Use Git to clone the repository to your preferred directory.
2. **Open Project**: Open the project in your chosen IDE that supports iOS or Android development, such as Xcode for iOS or Android Studio for Android.
3. **Run the Application**: Build and run the application on a simulator or physical device to start interacting with the TapGrid.

## Development Environment

- **iOS**: Developed using Swift and tested in Xcode.


## Grading Criteria

- **Class Design** (5 points): All functionality should be within a single UIView subclass.
- **Drawing Behavior** (5 points): Correct behavior in drawing and updating the grid as interactions occur.
- **Tap Handling** (15 points): Accurate and responsive tap counting and resetting logic.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
