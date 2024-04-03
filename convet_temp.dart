import 'dart:io';

void convertTemperatures(List<String> choices) {
  try {
    stdout.write('Enter temperature value: ');
    double tempValue = double.parse(stdin.readLineSync()!);

    for (String choice in choices) {
      print(choice);
    }

    stdout.write('Choose temperature scale: ');
    int tempScale = int.parse(stdin.readLineSync()!);

    double result;
    String scaleName;

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

    print('Result: ${result.toStringAsFixed(2)} $scaleName');
  } catch (e) {
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
  List<String> choices = [
    ' 1- celsius To Fahrenheit',
    ' 2- celsius To Kelvin',
    ' 3- kelvin To Celsius',
    ' 4- fahrenheit To Kelvin',
    ' 5- kelvin To Fahrenheit',
    ' 6- fahrenheit To Celsius',
  ];

  convertTemperatures(choices);
}
