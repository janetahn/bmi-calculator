Of course! Here's the **README written in proper Markdown**:

```markdown
# BMI Calculator App

This is a simple **BMI (Body Mass Index) Calculator** built using **SwiftUI** and the **MVVM** (Model-View-ViewModel) architectural pattern.

Users can:
- Select their **height** and **weight** using sliders.
- **Calculate** their BMI.
- View the **result** on a second screen.
- **Recalculate** to return and adjust their inputs.

---

## Technologies Used
- **SwiftUI** for the user interface and navigation
- **MVVM architecture** for clean separation of concerns:
  - **Model** (`BMI.swift`): Represents the BMI data.
  - **ViewModel** (`BMIViewModel.swift`): Handles business logic and state management.
  - **Views** (`ContentView.swift`, `ResultView.swift`): Handle UI and user interactions.
- **NavigationStack** and **navigationDestination** (iOS 16+) for screen transitions.

---

## App Structure

```
BMI Calculator/
├── BMI.swift             // Model - Represents BMI value
├── BMIViewModel.swift    // ViewModel - Manages data and logic
├── ContentView.swift     // View - Main screen with sliders
├── ResultView.swift      // View - Result screen showing calculated BMI
```

---

## Features
- Real-time **sliders** for selecting height (in meters) and weight (in kilograms).
- **Dynamic BMI calculation** using the formula:

  ```
  BMI = weight / (height * height)
  ```

- **Formatted results** to one decimal place.
- **Modern navigation** with SwiftUI's `NavigationStack` and `navigationDestination`.
- **State management** using `@StateObject`, `@ObservedObject`, and `@Published`.
- **Reset functionality** to allow recalculation easily.

---

## Requirements
- iOS 16.0+
- Xcode 14.0+
- Swift 5.7+

## How to Run
1. Clone this repository.
2. Open the project in **Xcode**.
3. Run on the **iOS Simulator** or a **physical device** running iOS 16+.
4. Adjust the sliders, tap **Calculate BMI**, and see your result!

---

## Future Improvements
- Add **color-coding** for BMI results (e.g., green, yellow, red).
- Display **BMI categories** (Underweight, Normal, Overweight, Obese).
- Support **Dark Mode** with custom styling.
- Add **animations** for smoother transitions.
