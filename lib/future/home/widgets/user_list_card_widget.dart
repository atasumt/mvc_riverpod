import 'package:flutter/material.dart';
import 'package:riverpod_mvc/core/models/response/user_response_data/datum.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';

class UserListCardWidget extends StatelessWidget {
  UserListCardWidget({super.key, required this.user});

  Datum? user;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(
              top: kDefaultNormalPadding,
              bottom: kDefaultNormalPadding,
              left: kFieldDefaultPadding,
              right: kFieldDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: NetworkImage('${user?.avatar}')),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${user?.firstName} ${user?.lastName}',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${user?.email}',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontSize: 14,
                                  color: kSecondaryColor.withOpacity(0.8)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
