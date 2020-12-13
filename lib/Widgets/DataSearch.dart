import 'package:cook_chef/Models/AccountsList.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  List<Accounts> accountsList = [];
  DataSearch({this.accountsList});
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {})];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {});
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = accountsList;
    return ListView.builder(
      itemCount: suggestionsList.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.account_circle),
        title: Text(suggestionsList[index].username),
        trailing: Icon(Icons.close),
      ),
    );
  }
}

Container _recentAccount({String id, String name}) {
  return Container(
    child: Row(
      children: <Widget>[
        Icon(Icons.account_circle),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(id),
              Text(name),
            ],
          ),
        ),
        Icon(Icons.close),
      ],
    ),
  );
}
