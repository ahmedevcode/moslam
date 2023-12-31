import 'package:flutter/material.dart';
import 'package:moslam/core/theme.dart';
import 'package:moslam/model/Radios.dart';


class radioitem extends StatefulWidget {
  Radios item;
  Function play;
  Function pause;

  radioitem(this.item, this.play, this.pause);

  @override
  State<radioitem> createState() => _radioitemState();
}

class _radioitemState extends State<radioitem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            '${widget.item.name}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    widget.play(widget.item.radioUrl);
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Theme.of(context).primaryColor,
                    size: 45,
                  )),
              IconButton(
                  onPressed: () {
                    widget.pause();
                  },
                  icon: Icon(
                    Icons.pause,
                    color: Theme.of(context).primaryColor,
                    size: 45,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
