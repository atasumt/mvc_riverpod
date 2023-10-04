import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_mvc/core/common/global_indicator_widget.dart';
import 'package:riverpod_mvc/core/helper/general_error_handler.dart';
import 'package:riverpod_mvc/core/models/response/user_response_data/user_response_data.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';
import 'package:riverpod_mvc/future/home/future/futures.dart';
import 'package:riverpod_mvc/future/home/widgets/user_list_card_widget.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<UserResponseData?> usersData =
        ref.watch(userModelFutureProvider('2'));

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
              top: kDefaultMiddlePadding,
              left: kDefaultMiddlePadding,
              right: kDefaultMiddlePadding,
            ),
            child: usersData.when(
                data: (data) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        controller: ScrollController(),
                        itemCount: data?.data?.length ?? 0,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: UserListCardWidget(user: data?.data?[index]),
                        ),
                      ),
                    ],
                  );
                },
                error: (error, stackTrace) => generalErrorHandler(context),
                loading: () => const Center(child:  GlobalIndicatorWidget()))),
      ),
    );
  }
}
