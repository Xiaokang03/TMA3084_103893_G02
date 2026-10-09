import 'dart:io';

void main() {
  print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

  stdout.write('Please enter your pizza size (small, medium, or large): \n');
  String pizza_size = (stdin.readLineSync() ?? '').toLowerCase().trim();

  int price = 0;

  // Switch case
  switch (pizza_size) {
    case 'small':
      price = 5;
      break;
    case 'medium':
      price = 7;
      break;
    case 'large':
      price = 10;
      break;
    default:
      print('Invalid pizza size!');
      return;
  }

  stdout.write('How many pizza do you want of $pizza_size? \n');
  int? quantity = int.tryParse(stdin.readLineSync() ?? '');

  if (quantity == null || quantity <= 0) {
    print('Invalid quantity! Please enter again.');
  } else {
    int total = price * quantity;

    print('Your Total Payment is: \$$total');
  }
}
