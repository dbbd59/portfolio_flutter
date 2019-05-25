import 'package:flutter/material.dart';

class ListTileDrawerMaterialDesign2 extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool active;
  final Function onTap;
  ListTileDrawerMaterialDesign2({
    this.icon,
    @required this.text,
    this.active = false,
    @required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.only(left: 8.0, right: 8.0),
        height: 48,
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 2.0,
          ),
          decoration: BoxDecoration(
            color: active
                ? Theme.of(context).primaryColor.withOpacity(0.12)
                : null,
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 8.0,
              ),
              Icon(
                icon,
                color: active ? Theme.of(context).primaryColor : Colors.grey,
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
