import 'dart:io';

// Function to convert temperatures based on user input
void convertTemperatures(List<String> choices) {
  try {
    // Ask the user to input the temperature value
    stdout.write('Enter temperature value: ');
    double tempValue = double.parse(stdin.readLineSync()!);

    // Display the available temperature conversion choices
    for (String choice in choices) {
      print(choice);
    }

    // Ask the user to choose a temperature scale
    stdout.write('Choose temperature scale: ');
    int tempScale = int.parse(stdin.readLineSync()!);

    // Variables to store the result and the chosen scale name
    double result;
    String scaleName;

    // Perform the conversion based on the user's choice
    switch (tempScale) {
      case 1:
        result = celsiusToFahrenheit(tempValue);
        scaleName = 'Fahrenheit';
        break;
      case 2:
        result = celsiusToKelvin(tempValue);
        scaleName = 'Kelvin';
        break;
      case 3:
        result = kelvinToCelsius(tempValue);
        scaleName = 'Celsius';
        break;
      case 4:
        result = fahrenheitToKelvin(tempValue);
        scaleName = 'Kelvin';
        break;
      case 5:
        result = kelvinToFahrenheit(tempValue);
        scaleName = 'Fahrenheit';
        break;
      case 6:
        result = fahrenheitToCelsius(tempValue);
        scaleName = 'Celsius';
        break;
      default:
        print('Invalid choice. Please choose a number between 1 and 6.');
        return;
    }

    // Display the result to the user
    print('Result: ${result.toStringAsFixed(2)} $scaleName');
  } catch (_) {
    // Handle invalid input
    print('Error: Invalid input. Please enter a valid number.');
  }
}

// Celsius to Fahrenheit conversion
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Fahrenheit to Celsius conversion
double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

// Celsius to Kelvin conversion
double celsiusToKelvin(double celsius) {
  return celsius + 273.15;
}

// Kelvin to Celsius conversion
double kelvinToCelsius(double kelvin) {
  return kelvin - 273.15;
}

// Fahrenheit to Kelvin conversion
double fahrenheitToKelvin(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9 + 273.15;
}

// Kelvin to Fahrenheit conversion
double kelvinToFahrenheit(double kelvin) {
  return (kelvin - 273.15) * 9 / 5 + 32;
}

void main(List<String> args) {
  // List of temperature conversion choices
  List<String> choices = [
    ' 1- Celsius to Fahrenheit',
    ' 2- Celsius to Kelvin',
    ' 3- Kelvin to Celsius',
    ' 4- Fahrenheit to Kelvin',
    ' 5- Kelvin to Fahrenheit',
    ' 6- Fahrenheit to Celsius',
  ];

  // Call the function to convert temperatures
  convertTemperatures(choices);
}
