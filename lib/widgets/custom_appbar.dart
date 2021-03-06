import 'package:flutter/material.dart';
import 'package:netflix_clone_web/assets.dart';
import 'package:netflix_clone_web/widgets/responsive.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  const CustomAppBar({Key key, this.scrollOffset = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
        color: Colors.black
            .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
        child: Responsive(
            mobile: _CustomAppBarMobile(), desktop: _CustomAppBarDesktop()));
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'Home',
                  onTap: () => print('Home'),
                ),
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => print('Movies'),
                ),
                _AppBarButton(
                  title: 'Latest',
                  onTap: () => print('My List'),
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => print('My List'),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    iconSize: 28.0,
                    onPressed: () => print('Search')),
                _AppBarButton(
                  title: 'KIDS',
                  onTap: () => print('Home'),
                ),
                _AppBarButton(
                  title: 'DVD',
                  onTap: () => print('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => print('Movies'),
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.card_giftcard, color: Colors.white),
                    iconSize: 28.0,
                    onPressed: () => print('Gift')),
                IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    iconSize: 28.0,
                    onPressed: () => print('Notifications')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('TV Shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => print('Movies'),
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => print('My List'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const _AppBarButton({Key key, @required this.title, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w600)),
    );
  }
}
