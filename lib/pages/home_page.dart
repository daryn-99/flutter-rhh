import 'package:app_rhh/data/data.dart';
import 'package:app_rhh/models/post_models.dart';
import 'package:app_rhh/widgets/post_container.dart';
import 'package:flutter/material.dart';

import 'package:app_rhh/config/palette.dart';
import 'package:app_rhh/widgets/circle_buttom.dart';
import 'package:app_rhh/widgets/create_post_container.dart';
import 'package:app_rhh/widgets/rooms.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        //Parte de arriba
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'RECO',
              style: const TextStyle(
                color: Palette.colorBlue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search_rounded,
                iconSize: 30.0,
                onPressed: () => print('Buscar'),
              ),
              CircleButton(
                  icon: MdiIcons.inbox,
                  iconSize: 30.0,
                  onPressed: () => print('Ideas Inbox')),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () => print('Messenger'),
              ),
            ],
          ),
          //Container para publicar
          SliverToBoxAdapter(
            child: CreatePostContainer(),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];
                return PostContainer(
                  post: post,
                );
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
