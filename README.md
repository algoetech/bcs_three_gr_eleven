# contraints_example : 

A Simple Flutter project for illustrating basic functionalities based on some features. It demonstrates responsive design and state management. The app allows users to fill out a registration form and view the submitted details on a separate screen.

## Features

- **Responsive Design**: The app uses `SafeArea`, `Expanded`, `MediaQuery`, and `LayoutBuilder` to adapt the UI based on the screen size. It has different layouts for wide and narrow screens.
- **State Management**: The app uses the `Provider` package for state management. The registration data is managed using a `ChangeNotifier` model.
- **Form Validation**: The registration form includes fields for first name, middle name, last name, gender, email address, phone number, and country of birth.

## How to Run

1. Make sure you have Flutter installed. You can follow the installation guide [here](https://flutter.dev/docs/get-started/install).
2. Clone this repository.
    ```bash
   git clone https://github.com/algoetech/constraints_example.git
    ```
3. Open the project directory in your preferred IDE.
4. Run `flutter pub get` to install the dependencies.
5. Run the app using `flutter run`.

## File Structure

- `main.dart`: The main entry point of the application. It sets up the responsive design and state management.
- `registration_model.dart`: Contains the `RegistrationModel` class which manages the registration data.

## Screens

- **RegistrationScreen**: The main screen with the registration form. It adapts to different screen sizes.
- **RegistrationDetailsScreen**: Displays the submitted registration details.

## Documentation

The code is commented to explain the implementation of responsive design and state management. Please refer to the comments in the code for detailed explanations.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
