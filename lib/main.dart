import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:cook_chef/Screens/AccountPage.dart';
import 'package:cook_chef/Screens/AccountSearchPage.dart';
import 'package:cook_chef/Screens/AccountSettings.dart';
import 'package:cook_chef/Screens/HomePage.dart';
import 'package:cook_chef/Screens/MakeRecipePage.dart';
import 'package:cook_chef/Screens/NotificationsPage.dart';
import 'package:cook_chef/Screens/IncredientsPage.dart';
import 'package:cook_chef/Screens/UploadPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Auth/AuthenticationService.dart';
import 'package:cook_chef/Screens/SignIn.dart';
import 'package:cook_chef/Screens/SignUp.dart';
import 'Screens/ViewRecipesPage.dart';
import 'Screens/SelectedIngredientsPage.dart';
import 'Screens/Forgot_Password.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authCredentialChanges,
        ),
        ChangeNotifierProvider<IngredientsHandler>(
          create: (_) => IngredientsHandler(),
        ),
      ],
      child: MaterialApp(
        /* To remove the debug banner in the top right */
        debugShowCheckedModeBanner: false,

        /* Creating routes for different pages */
        routes: {
          HomePage.id: (context) => HomePage(),
          AccountSearchPage.id: (context) => AccountSearchPage(),
          RecipesPage.id: (context) => RecipesPage(),
          SelectedIngredientsPage.id: (context) => SelectedIngredientsPage(),
          ViewRecipesPage.id: (context) => ViewRecipesPage(),
          MakeRecipesPage.id: (context) => MakeRecipesPage(),
          NotificationsPage.id: (context) => NotificationsPage(),
          AccountPage.id: (context) => AccountPage(),
          UploadPage.id: (context) => UploadPage(),
          AuthenticationWrapper.id: (context) => AuthenticationWrapper(),
          Login.id: (context) => Login(),
          SignUpPage.id: (context) => SignUpPage(),
          Forgot.id: (context) => Forgot(),
          AccountSettings.id: (context) => AccountSettings(),
        },

        /* Setting the initial route */
        initialRoute: AuthenticationWrapper.id,
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  static final id = 'wrapper';
  @override
  Widget build(BuildContext context) {
    User user = context.watch<User>();
    User auth = FirebaseAuth.instance.currentUser;
    auth.reload();
    if (user != null && auth.emailVerified) {
      return HomePage();
    } else {
      return Login();
    }
  }
}
