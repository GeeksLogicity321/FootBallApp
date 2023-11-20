import 'package:flutter/material.dart';
import 'package:football/Providers/CommentaryProvider.dart';
import 'package:football/Providers/EventProvider.dart';
import 'package:football/Providers/TeamProvider.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/Matches/CommentaryScreen.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/Matches/EventsScreen.dart';
import 'package:football/Screens/BottomNavigationBarScreens/MatchPage/Matches/PlayersScreen.dart';
import 'package:provider/provider.dart';

class MatchDetailScreen extends StatefulWidget {
  const MatchDetailScreen({super.key});
  static const routeName = 'MatchDetailScreen';

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EventProvider>().callEventApi(context);
      context.read<CommentaryProvider>().callCommentaryApi(context);
      context.read<TeamProvider>().callTeamApi(context);
    });
  }

  final List<Widget> _tabs = [
    const EventScreen(),
    const CommentaryScreen(),
    const PlayersScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        // backgroundColor: kPrimaryColor,
        appBar: AppBar(
          title: const Text(
            'Punchy',
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Event'),
              Tab(text: 'Commentary'),
              Tab(text: 'Players'),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
