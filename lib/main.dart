import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:tailwind_cli/tailwind_cli.dart';
// import 'package:flutter_tailwindcss/flutter_tailwindcss.dart';
// import 'package:tailwind_standards/tailwind_standards.dart';
import 'models/registration.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => RegistrationModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Registration App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationScreen(),
    );
  }
}

// RegistrationScreen: This screen adapts to different screen sizes using LayoutBuilder.
class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RegistrationModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Register Here')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // If the screen width is greater than 600, use WideLayout; otherwise, use NarrowLayout.
            if (constraints.maxWidth > 600) {
              return WideLayout();
            } else {
              return NarrowLayout();
            }
          },
        ),
      ),
    );
  }
}

// WideLayout: Layout for wide screens
class WideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RegistrationModel>(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'First Name'),
              onChanged: (value) => model.setFirstName(value),
            ),
            // Add similar TextFields for other fields
            TextField(
              decoration: InputDecoration(labelText: 'Middle Name'),
              onChanged: (value) => model.setMiddleName(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last Name'),
              onChanged: (value) => model.setLastName(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Gender'),
              onChanged: (value) => model.setGender(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (value) => model.setEmail(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Phone Number'),
              onChanged: (value) => model.setPhoneNumber(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Country of Birth'),
              onChanged: (value) => model.setCountryOfBirth(value),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationDetailsScreen(),
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

// NarrowLayout: Layout for narrow screens
class NarrowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RegistrationModel>(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'First Name'),
              onChanged: (value) => model.setFirstName(value),
            ),
            // Add similar TextFields for other fields
            TextField(
              decoration: InputDecoration(labelText: 'Middle Name'),
              onChanged: (value) => model.setMiddleName(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last Name'),
              onChanged: (value) => model.setLastName(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Gender'),
              onChanged: (value) => model.setGender(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (value) => model.setEmail(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Phone Number'),
              onChanged: (value) => model.setPhoneNumber(value),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Country of Birth'),
              onChanged: (value) => model.setCountryOfBirth(value),
            ),
            // a submit button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationDetailsScreen(),
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

// RegistrationDetailsScreen: This screen displays the submitted registration details.
class RegistrationDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RegistrationModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Registration Details')),
      // backgroundColor: TwColors.scaffoldBackgroundColor(context),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('First Name: ${model.firstName}'),
                Text('Middle Name: ${model.middleName}'),
                Text('Last Name: ${model.lastName}'),
                Text('Gender: ${model.gender}'),
                Text('Email: ${model.email}'),
                Text('Phone Number: ${model.phoneNumber}'),
                Text('Country of Birth: ${model.countryOfBirth}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
