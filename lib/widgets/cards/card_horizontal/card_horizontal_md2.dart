import 'package:flutter/material.dart';

class CardHorizontalMaterialDesign2 extends StatelessWidget {
  final Function onTap;
  final String imageNetwork;
  final String imageAsset;
  final String title;
  final String subTitle;
  CardHorizontalMaterialDesign2({
    @required this.title,
    @required this.onTap,
    this.subTitle,
    this.imageNetwork,
    this.imageAsset,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 1,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 164,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: imageNetwork != null
                          ? NetworkImage(imageNetwork)
                          : imageAsset != null
                              ? AssetImage(imageAsset)
                              : Container(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Flexible(
                        child: Text(
                          subTitle,
                          overflow: TextOverflow.fade,
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
