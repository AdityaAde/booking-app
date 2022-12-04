import 'package:booking_app/presentation/pages/discover/trips/component/other_matches.dart';
import 'package:booking_app/presentation/pages/discover/trips/component/trips_your_roomies.dart';
import 'package:flutter/material.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TripsYourRoomies(),
        OtherMatches(),
      ],
    );
  }
}
