import 'package:flutter_web/material.dart';
import 'package:portfolio/providers/utilities_provider.dart';
import 'package:provider/provider.dart';

class SourceCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UtilitiesProvider utility = Provider.of<UtilitiesProvider>(context);

    return Container(
      child: Center(
        child: Wrap(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: FlatButton(
                onPressed: () {
                  utility.launchURL(
                    url:
                        "https://github.com/dbbd59/portfolio_flutter_multiplatform",
                    name: "View on GithUb",
                  );
                },
                padding: EdgeInsets.all(0.0),
                child: Image.network(
                  'https://d33wubrfki0l68.cloudfront.net/ac4bb7f3b058a82977f55ab37036fb5b1fb41209/d2368/assets/img/view-on-github.png',
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: FlatButton(
                onPressed: () {
                  utility.launchURL(
                    url:
                        "https://www.tipicopay.com/images/download-buttons/download-for-android.png",
                    name: "Download for Android",
                  );
                },
                padding: EdgeInsets.all(0.0),
                child: Image.network(
                  'https://www.tipicopay.com/images/download-buttons/download-for-android.png',
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: FlatButton(
                onPressed: () {
                  utility.launchURL(
                    url:
                        "https://github.com/dbbd59/portfolio_flutter_multiplatform",
                    name: "View on GithUb",
                  );
                },
                padding: EdgeInsets.all(0.0),
                child: Image.network(
                  'https://d33wubrfki0l68.cloudfront.net/ac4bb7f3b058a82977f55ab37036fb5b1fb41209/d2368/assets/img/view-on-github.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
