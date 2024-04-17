import 'package:flutter/material.dart';

String url = 'https://newsapi.org/v2/everything?q=Egypt&from=2022-08-16&sortBy=popularity&apiKey=6290af0408264bf8a08a88cff184ac87';

String? token = '';

final paymentLabels = [
  'Credit card / Debit card',
  'Cash on delivery',
  'Paypal',
  'Google wallet',
];

final paymentIcons = [
  Icons.credit_card,
  Icons.money_off,
  Icons.payment,
  Icons.account_balance_wallet,
];