import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../utilities/app_styles.dart';
import '../../../widgets/error_widget.dart';
import '../bloc/friend_request_list_bloc/friend_requests_list_bloc.dart';

class FriendRequestListWidget extends StatelessWidget {
  const FriendRequestListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendRequestsListBloc, FriendRequestsListState>(
      builder: (context, state) {
        return Dialog(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
                // maxHeight: SizeConfig.heightMultiplier * 60,
                ),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 50,
                    child: state.when(
                      error: () {
                        return const CustomErrorWidget();
                      },
                      initial: () => const Center(
                        child: SizedBox(),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      success: (userList) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: userList.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {},
                                    child: Card(
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Card(
                                              margin: EdgeInsets.zero,
                                              clipBehavior: Clip.hardEdge,
                                              shape: const StadiumBorder(),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    userList[index].profilePic,
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              userList[index].name,
                                              style:
                                                  AppTextStyle.boldTitleStyle(
                                                      fontSize: 14),
                                            ),
                                            const Spacer(
                                              flex: 1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }, listempty: () {  },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
