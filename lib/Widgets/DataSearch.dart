import 'package:cook_chef/Models/AccountPageArgument.dart';
import 'package:cook_chef/Models/AccountsList.dart';
import 'package:cook_chef/Screens/Account/AccountPage.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  List<Accounts> accountsList = [];
  DataSearch({this.accountsList});
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    final suggestionsList =
        accountsList.where((element) => element.username.startsWith(query));
    if (suggestionsList.length == 0) {
      return Container(
        margin: EdgeInsets.all(20.0),
        child: Text(
          'No results found for \"$query\"',
        ),
      );
    }
    return ListView.builder(
        itemCount: suggestionsList.length,
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                Navigator.pushNamed(context, AccountPage.id,
                    arguments: AccountArgument(
                        outerUserUid: suggestionsList.elementAt(index).userId));
              },
              leading: CircleAvatar(
                radius: _width * 0.05,
                backgroundImage:
                    NetworkImage(suggestionsList.elementAt(index).userImage),
              ),
              title: Text(suggestionsList.elementAt(index).username),
            ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    final suggestionsList = accountsList.where((element) =>
        element.username.toLowerCase().startsWith(query.toLowerCase()));
    if (suggestionsList.length == 0) {
      return Container(
        margin: EdgeInsets.all(20.0),
        child: Text(
          'No results found for \"$query\"',
        ),
      );
    }
    return ListView.builder(
        itemCount: suggestionsList.length,
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                Navigator.pushNamed(context, AccountPage.id,
                    arguments: AccountArgument(
                        outerUserUid: suggestionsList.elementAt(index).userId));
              },
              leading: CircleAvatar(
                radius: _width * 0.05,
                backgroundImage:
                    NetworkImage(suggestionsList.elementAt(index).userImage),
              ),
              title: Text(suggestionsList.elementAt(index).username),
            ));
  }
}
