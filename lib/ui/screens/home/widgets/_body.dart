part of '../home.dart';

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final ScrollController _scrollController = ScrollController();
  bool _showTopBar = true;
  bool _showBottomBar = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!_showBottomBar) {
        setState(() {
          _showBottomBar = true;
          _showTopBar = false;
        });
      }
    } else {
      if (!_showTopBar) {
        setState(() {
          _showBottomBar = false;
          _showTopBar = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    const appBarHeight = 115.0;

    return Screen(
      bottomBar: _showBottomBar,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  const _Insights(),
                  Space.y.t20,
                  RaceSlider(
                    title: 'Live Streams',
                    races: _liveStreamRaces,
                    leading: Assets.icons.live.image(width: 18, height: 18),
                    onViewAllPressed:
                        () => debugPrint('View All Live Streams!'),
                  ),
                  Space.y.t20,
                  RaceSlider(
                    title: 'Highlights',
                    races: _highlightRaces,
                    viewAllText: 'View More Clips',
                    onViewAllPressed: () => debugPrint('View More Highlights!'),
                  ),
                  Space.y.t20,
                  RaceSlider(
                    title: 'Follow your Favorite',
                    races: _favoriteRaces,
                    viewAllText: 'View More Clips',
                    onViewAllPressed: () => debugPrint('View More Favorites!'),
                  ),
                  Space.y.t20,
                  const _RewardsAndPoints(),
                  Space.y.t20,
                  const PointsProgressCard(),
                  Space.y.t20,
                  const LeaderboardCard(),
                  Space.y.t20,
                  const Sponsers(),
                  Space.y.t30,
                  Space.y.t30,
                  Space.y.t30,
                  Space.y.t30,
                  Space.bottom,
                ]),
              ),
            ],
          ),

          if (_showTopBar)
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: appBarHeight,
              child: _TopBar(),
            ),
        ],
      ),
    );
  }
}
