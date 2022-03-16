import 'package:flutter/material.dart';
import 'package:movie_db_project/resources/resources.dart';
import 'package:movie_db_project/widgets/elements/radial_percent_widget.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _TopPosterWidget(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _MovieNameWidget(),
        ),
        _ScoreWidget(),
        _SummeryWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _DescriptionWidget(),
        ),
        const SizedBox(height: 30.0),
        _PeopleWidgets(),
      ],
    );
  }

  Text _DescriptionWidget() {
    return Text(
      'Overvsadasdasdasdasdasdaiew',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
      ),
    );
  }

  Text _OverviewWidget() {
    return Text(
      'Overview',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
      ),
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Images.whoto),
        Positioned(
          top: 20.0,
          left: 10.0,
          bottom: 20.0,
          right: 250.0,
          child: Image.asset(Images.whoto),
        ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'sadsadsdasd',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.85,
            ),
          ),
          TextSpan(
            text: ' (2011)',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: const [
              SizedBox(
                width: 40.0,
                height: 40.0,
                child: RadialPercentWidget(
                  percent: 0.72,
                  fillColor: Color.fromARGB(255, 10, 23, 25),
                  lineColor: Color.fromARGB(255, 37, 203, 103),
                  freeColor: Color.fromARGB(255, 25, 54, 31),
                  lineWidth: 3,
                  child: Text(
                    '72',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Text('User score'),
            ],
          ),
        ),
        Container(
          height: 15.0,
          width: 1.0,
          color: Colors.grey,
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: const [
              Icon(Icons.play_arrow),
              SizedBox(width: 10.0),
              Text('Play Trailer'),
            ],
          ),
        ),
      ],
    );
  }
}

class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70),
        child: Text(
          'asdadsadsfsdfdsfasdasd asdad',
          maxLines: 3,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

class _PeopleWidgets extends StatelessWidget {
  const _PeopleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
    );
    final jobTitleStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
    );
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('asdasddasd', style: nameStyle),
                Text('asdasadasdsddasd', style: jobTitleStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('asdasddasd', style: nameStyle),
                Text('asdasadsdsddasd', style: jobTitleStyle),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('asdasddasd', style: nameStyle),
                Text('asdasddasdasdasd', style: jobTitleStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('asdasddasd', style: nameStyle),
                Text('asdasdsadsadasd', style: jobTitleStyle),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
