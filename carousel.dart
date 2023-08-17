import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

// void main() {
//   runApp(MyApp());
// }

class Subscribe extends StatelessWidget {
  const Subscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Newsletter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _handleSubscriptionResult(bool success) {
    if (success) {
      // Subscription successful
      print('Successfully subscribed to the newsletter.');
    } else {
      // Subscription failed
      print('Failed to subscribe to the newsletter.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Newsletter Subscription'),
      ),
      body: Center(
        child: NewsletterSubscriptionButton(
          onSubscriptionResult: _handleSubscriptionResult,
        ),
      ),
    );
  }
}

class NewsletterSubscriptionButton extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final Function(bool success) onSubscriptionResult;

  NewsletterSubscriptionButton({required this.onSubscriptionResult});

  void _subscribeToNewsletter(BuildContext context) async {
    final String email = _emailController.text;
    try {
      final response = await http.post(
        Uri.parse('http://your-newsletter-api-endpoint.com/subscribe'),
        body: {'email': email},
      );

      if (response.statusCode == 200) {
        onSubscriptionResult(true); // Notify success
      } else {
        onSubscriptionResult(false); // Notify failure
      }
    } catch (e) {
      onSubscriptionResult(false); // Notify failure
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () => _subscribeToNewsletter(context),
            child: Text('Subscribe to Newsletter'),
          ),
        ],
      ),
    );
  }
}

