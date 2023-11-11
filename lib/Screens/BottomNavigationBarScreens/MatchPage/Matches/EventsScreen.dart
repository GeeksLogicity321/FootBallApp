import 'package:flutter/material.dart';
import 'package:football/Providers/EventProvider.dart';
import 'package:football/constant/constants.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});
  static const routeName = 'EventScreen';
  @override
  Widget build(BuildContext context) {
    return Consumer<EventProvider>(builder: (_, eventProvider, __) {
      if (eventProvider.isLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (eventProvider.event.isEmpty) {
        return const Center(
          child: Text('There are no events yet'),
        );
      } else {
        return ListView.builder(
            itemCount: eventProvider.event.length,
            // eventProvider.event.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                    color: kSecondaryColor,
                    height: 20.h,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                            child: Text(
                          eventProvider.event[index].playerName ?? '',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        )),
                        Text(
                          eventProvider.event[index].event ?? '',
                          style: const TextStyle(color: kTextHintColor),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Min: ${eventProvider.event[index].minute.toString()}',
                            style: const TextStyle(color: kTextHintColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  eventProvider.event[index].event == 'YELLOW_CARD'
                      ? Positioned(
                          right: 20.w,
                          top: 1.h,
                          child: Image.asset(
                            'Assets/YellowCard.png',
                            height: 10.h,
                          ))
                      : Positioned(
                          right: 1.w,
                          top: 1.h,
                          child: Image.asset(
                            'Assets/Goal.png',
                            height: 10.h,
                          ),
                        )
                ],
              );
            });
      }
    });
  }
}
