import 'package:cook_chef/Models/IngredientsHandler.dart';
import 'package:cook_chef/Screens/Account/AccountPage.dart';
import 'package:cook_chef/Screens/Account/AccountSearchPage.dart';
import 'package:cook_chef/Screens/Account/AccountSettings.dart';
import 'package:cook_chef/Screens/HomePage.dart';
import 'package:cook_chef/Screens/Recipe/MakeRecipePage.dart';
import 'package:cook_chef/Screens/NotificationsPage.dart';
import 'package:cook_chef/Screens/UpdateEmail.dart';
import 'package:cook_chef/Screens/Recipe/IngredientsPage.dart';
import 'Screens/Account/UploadPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'Auth/AuthenticationService.dart';
import 'Screens/UpdatePassword.dart';
import 'package:cook_chef/Screens/Authentication/SignIn.dart';
import 'package:cook_chef/Screens/Authentication/SignUp.dart';
import 'Screens/Recipe/ViewRecipesPage.dart';
import 'Screens/Recipe/SelectedIngredientsPage.dart';
import 'Screens/Authentication/Forgot_Password.dart';

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
          IngredientsPage.id: (context) => IngredientsPage(),
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
          UpdatePassword.id: (context) => UpdatePassword(),
          UpdateEmail.id: (context) => UpdateEmail(),
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
    context.watch<AuthenticationService>().reloadUser();
    if (user != null && auth.emailVerified) {
      return HomePage();
    } else {
      return Login();
    }
  }
}
