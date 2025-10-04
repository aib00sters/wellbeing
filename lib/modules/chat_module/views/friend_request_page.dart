import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/chat_module/bloc/user_list_bloc/user_list_bloc.dart';
import 'package:wellbeings/modules/chat_module/models/user_list_item_model/user_list_item_model.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/error_widget.dart';

class FriendRequestPage extends StatefulWidget {
  const FriendRequestPage({super.key});

  @override
  State<FriendRequestPage> createState() => _FriendRequestPageState();
}

class _FriendRequestPageState extends State<FriendRequestPage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserListBloc>(
      create: (context) =>
          UserListBloc()..add(const UserListEvent.fetchUsers()),
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appWhite,
          elevation: 0,
          title: Text(
            "Add Friends",
            style: AppTextStyle.boldTitleStyle(
                fontSize: SizeConfig.textMultiplier * 2.86),
          ),
        ),
        body: ScreenSetter(
          child: BlocBuilder<UserListBloc, UserListState>(
              builder: (context, state) {
            return state.when(
                error: (String errorMsg) {
                  return const CustomErrorWidget();
                },
                initial: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                success: (List<UserListItem> userList) {
                  return ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: userList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          // final chatBloc = BlocProvider.of<ChatBloc>(context);
                          // chatBloc.add(ChatEvent.initChat(
                          //     receiverId: userList[index].userId));
                        },
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  clipBehavior: Clip.hardEdge,
                                  shape: const StadiumBorder(),
                                  child: Image.network(
                                    userList[index].profilePic,
                                    height: 50,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  flex: 3,
                                  fit: FlexFit.tight,
                                  child: Text(
                                    userList[index].name,
                                    style: AppTextStyle.boldTitleStyle(
                                        fontSize: 14),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.check_circle),
                                    iconSize: SizeConfig.widthMultiplier * 8,
                                    color: AppColors.colorSecondary,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.cancel_rounded,
                                    ),
                                    iconSize: SizeConfig.widthMultiplier * 8,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                });
          }),
        ),
      )),
    );
  }
}
