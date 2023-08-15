import 'package:flutter/material.dart';
import 'package:mlmapp/ui/screens/achievements/achievements_screen.dart';
import 'package:mlmapp/ui/screens/home/info_list_item.dart';
import 'package:mlmapp/ui/screens/levelStatusGraph/level_status_graph.dart';
import 'package:mlmapp/ui/screens/levelStatusWithBV/level_status_with_bv_screen.dart';
import 'package:mlmapp/ui/screens/royaltyGraph/royalty_graph_screen.dart';
import 'package:mlmapp/ui/screens/teamTreeGraph/team_tree_graph_screen.dart';
import 'package:mlmapp/ui/screens/tickets/tickets_screen.dart';

class InfoList extends StatelessWidget {
  const InfoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        InfoListItem(
          icon: Icons.account_tree,
          title: "Royalty Graph",
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RoyaltyGraphScreen(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        InfoListItem(
          icon: Icons.account_tree,
          title: "Team Tree View",
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TeamTreeGraphScreen(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        InfoListItem(
          icon: Icons.account_tree,
          title: "Level Status Graph",
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LevelStatusGraphScreen(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        InfoListItem(
          icon: Icons.account_tree,
          title: "Level Status With BV",
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LevelStatusWithBVScreen(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        InfoListItem(
          icon: Icons.account_tree,
          title: "Achievements",
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AchievementsScreen(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        InfoListItem(
          icon: Icons.account_tree,
          title: "Tickets",
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TicketsScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
