import 'package:cook_chef/Screens/Account/AccountSettings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  static final id = 'about';
  @override
  _AboutPage createState() => _AboutPage();
}

class _AboutPage extends State<About> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context, AccountSettings.id);
            },
            child: Icon(Icons.arrow_back)),
        title: Text('About'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xff088378), Color(0xff00AC58)])),
        ),
      ),
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.03),
              child: Column(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Privacy Policy\n',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                            'Your privacy is important to us. It is Debuggers\' policy to respect your privacy regarding any information we may collect from you through our app, ChefGuru.\n'),
                        Text(
                            'We only ask for personal information when we truly need it to provide a service to you. We collect it by fair and lawful means, with your knowledge and consent. We also let you know why we’re collecting it and how it will be used.\n'),
                        Text(
                            'We only retain collected information for as long as necessary to provide you with your requested service. What data we store, we’ll protect within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use or modification.\n'),
                        Text(
                            'We don’t share any personally identifying information publicly or with third-parties, except when required to by law.\n'),
                        Text(
                            'Our app may link to external sites that are not operated by us. Please be aware that we have no control over the content and practices of these sites, and cannot accept responsibility or liability for their respective privacy policies.\n'),
                        Text(
                            'You are free to refuse our request for your personal information, with the understanding that we may be unable to provide you with some of your desired services.\n'),
                        Text(
                            'Your continued use of our app will be regarded as acceptance of our practices around privacy and personal information. If you have any questions about how we handle user data and personal information, feel free to contact us.\n'),
                        Text(
                            'This policy is effective as of 31 December 2020.\n'),
                      ]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Debuggers Terms of Service\n',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('1.Terms'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'By accessing our app, ChefGuru, you are agreeing to be bound by these terms of service, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing ChefGuru. The materials contained in ChefGuru are protected by applicable copyright and trademark law.\n'),
                      ),
                      Text('2. Use License'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Permission is granted to temporarily download one copy of ChefGuru per device for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not\: modify or copy the materials;use the materials for any commercial purpose, or for any public display (commercial or non-commercial);attempt to decompile or reverse engineer any software contained in ChefGuru;remove any copyright or other proprietary notations from the materials; ortransfer the materials to another person or "mirror" the materials on any other server.This license shall automatically terminate if you violate any of these restrictions and may be terminated by Debuggers at any time. Upon terminating your viewing of these materials or upon the termination of this license, you must destroy any downloaded materials in your possession whether in electronic or printed format.'),
                      ),
                      Text('\n3. Disclaimer'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'The materials within ChefGuru are provided on an \'as is\' basis. Debuggers makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties including, without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights.Further, Debuggers does not warrant or make any representations concerning the accuracy, likely results, or reliability of the use of the materials on its website or otherwise relating to such materials or on any sites linked to ChefGuru.'),
                      ),
                      Text('\n4. Limitations'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'In no event shall Debuggers or its suppliers be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use ChefGuru, even if Debuggers or a Debuggers authorized representative has been notified orally or in writing of the possibility of such damage. Because some jurisdictions do not allow limitations on implied warranties, or limitations of liability for consequential or incidental damages, these limitations may not apply to you.\n'),
                      ),
                      Text('5. Accuracy of materials'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'The materials appearing in ChefGuru could include technical, typographical, or photographic errors. Debuggers does not warrant that any of the materials on ChefGuru are accurate, complete or current. Debuggers may make changes to the materials contained in ChefGuru at any time without notice. However Debuggers does not make any commitment to update the materials.\n'),
                      ),
                      Text('6. Links'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Debuggers has not reviewed all of the sites linked to its app and is not responsible for the contents of any such linked site. The inclusion of any link does not imply endorsement by Debuggers of the site. Use of any such linked website is at the user\'s own risk.\n'),
                      ),
                      Text('7. Modifications'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Debuggers may revise these terms of service for its app at any time without notice. By using ChefGuru you are agreeing to be bound by the then current version of these terms of service.\n'),
                      ),
                      Text('8. Governing Law'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'These terms and conditions are governed by and construed in accordance with the laws of India and you irrevocably submit to the exclusive jurisdiction of the courts in that State or location.\n'),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
