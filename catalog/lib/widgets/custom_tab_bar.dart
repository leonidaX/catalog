//@dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/config/config.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> titles;
  final Function(int value) onChanged;
  const CustomTabBar({Key key, this.titles, this.onChanged}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<bool> activated;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activated = List.generate(widget.titles.length, (index) => false);
    activated[0] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: widget.titles.map(
          (e) {
            int index = widget.titles.indexOf(e);
            bool a = activated[index];
            return InkWell(
              onTap: () {
                for (var i = 0; i < widget.titles.length; i++) {
                  if (i == index)
                    activated[i] = true;
                  else
                    activated[i] = false;
                }
                if (widget.onChanged != null) widget.onChanged(index);
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.only(right: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      e,
                      style: Config.style.titleStyle.copyWith(
                          fontWeight: a ? FontWeight.bold : FontWeight.w500,
                          fontSize: a ? 24 : 16),
                    ),
                    Container(
                      width: 30,
                      height: 2,
                      color: a ? Config.colors.primaryColor : Colors.white,
                    ),
                  ],
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
