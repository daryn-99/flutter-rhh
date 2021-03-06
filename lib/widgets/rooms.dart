import 'package:flutter/material.dart';
import 'package:app_rhh/config/palette.dart';

class Rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 4.0,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          //Aqui iran los mensajes diarios
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _createRoomButton(),
            );
          }
          //Mostrar los compleañeros de cada mes
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/R4b1bb228bf826befdb5e9d530b8738fa?rik=S8WWdffVARYPsg&pid=ImgRaw'),
            ),
          );
        },
      ),
    );
  }
}

class _createRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print(''),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      color: Colors.white,
      borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
      textColor: Palette.colorBlue,
      child: Row(
        children: [
/*           ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.cake_rounded,
              size: 35.0,
              color: Colors.white,
            ),
          ),
 */
          Icon(
            Icons.cake_rounded,
            size: 35.0,
            color: Colors.purple,
          ),
          const SizedBox(width: 4.0),
          Text(''),
        ],
      ),
    );
  }
}
