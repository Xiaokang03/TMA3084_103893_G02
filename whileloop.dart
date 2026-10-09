import 'dart:io';

void main() {
  String order = 'yes';

  while (order == 'yes') {
    print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

    String pizza_size = '';

    while (pizza_size != 'small' &&
        pizza_size != 'medium' &&
        pizza_size != 'large') {
      stdout.write('Please enter your pizza size (small, medium, or large):\n');

      pizza_size = (stdin.readLineSync() ?? '').toLowerCase().trim();

      if (pizza_size != 'small' &&
          pizza_size != 'medium' &&
          pizza_size != 'large') {
        print('Invalid pizza size! Please enter small, medium, or large.');
      }
    }

    int price = 0;

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
    }

    int? quantity;

    while (quantity == null || quantity <= 0) {
      stdout.write('How many pizzas do you want of $pizza_size? \n');

      quantity = int.tryParse(stdin.readLineSync() ?? '');

      if (quantity == null || quantity <= 0) {
        print('Invalid quantity! Please enter a positive number.\n');
      }
    }

    int total = price * quantity;

    print('Your Total Payment is: \$$total');

    //Continuous ordering
    print('\n==================================================');
    stdout.write('Do you want to order again? (yes/no): ');
    order = (stdin.readLineSync() ?? '').toLowerCase().trim();

    while (order != 'yes' && order != 'no') {
      stdout.write('Invalid choice! Please enter yes or no: ');
      order = (stdin.readLineSync() ?? '').toLowerCase().trim();
    }
  }

  print('\nThank you for using Pizza Order Calculator!');
  print('==================================================');
}
