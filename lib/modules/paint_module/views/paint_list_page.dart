import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:wellbeings/utilities/app_navigator.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_styles.dart';
import '../../../utilities/screen_sizer.dart';
import '../../../utilities/size_config.dart';
import '../../home_module/widgets/paint_list_widget.dart';
import '../blocs/load_painting_bloc/load_painting_bloc.dart';
import '../blocs/projects_fetch_bloc/projects_fetch_bloc.dart';

class PaintProjectspage extends StatefulWidget {
  const PaintProjectspage({
    super.key,
  });

  @override
  State<PaintProjectspage> createState() => _PaintProjectspageState();
}

class _PaintProjectspageState extends State<PaintProjectspage> {
  String selected = '';
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBGColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.appBGColor,
          iconTheme: const IconThemeData(color: AppColors.appBlack),
          title: Text(
            'Paintings',
            style: AppTextStyle.titleTextStyle(),
          ),
          centerTitle: true,
          actions: const [
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.more_vert,
            //   ),
            // )
          ],
        ),
        body: ScreenSetter(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.sizeMultiplier * 8),
            child: BlocBuilder<ProjectsFetchBloc, ProjectsFetchState>(
              builder: (context, state) {
                return state.when(
                  fetcherror: () {
                    return const SizedBox();
                  },
                  fetchLoading: () {
                    return const SizedBox();
                  },
                  fetchSuccess: (data) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Wrap(
                              children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        final loadPaintBloc =
                                            BlocProvider.of<LoadPaintingBloc>(
                                                context);
                                        loadPaintBloc.add(
                                          const LoadPaintingEvent.loadProject(
                                            extImagePath: '',
                                            path: '',
                                            isarId: -1,
                                            isDirectPath: false,
                                          ),
                                        );
                                      },
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        elevation: 2,
                                        child: SizedBox(
                                          height:
                                              SizeConfig.sizeMultiplier * 41,
                                          width: SizeConfig.sizeMultiplier * 36,
                                          child: const Center(
                                            child: Icon(Icons.add, size: 50),
                                          ),
                                        ),
                                      ),
                                    )
                                  ] +
                                  data
                                      .map<Widget>((e) => InkWell(
                                            onLongPress: () {
                                              setState(() {
                                                selected = e.id.toString();
                                              });
                                            },
                                            child: PaintListWidget(
                                                id: e.id!,
                                                filepath: e.filepath.toString(),
                                                selected:
                                                    selected == e.id.toString(),
                                                activityName: e.filepath!
                                                    .split('/')
                                                    .last
                                                    .replaceAll('.txt', ''),
                                                duration: e.dateTime != null
                                                    ? timeago
                                                        .format(e.dateTime!)
                                                    : "",
                                                ontap: (p0) {
                                                  final loadPaintBloc =
                                                      BlocProvider.of<
                                                              LoadPaintingBloc>(
                                                          context);

                                                  loadPaintBloc.add(
                                                    LoadPaintingEvent
                                                        .loadProject(
                                                      isDirectPath: true,
                                                      extImagePath: e.filepath!,
                                                      path: '',
                                                      isarId: -1,
                                                    ),
                                                  );
                                                  AppNavigator.pushNamed(
                                                      '/paintPage');
                                                  // final bloc = BlocProvider.of<
                                                  //         SelectActivityBloc>(
                                                  //     context);
                                                  // bloc.add(SelectActivityEvent
                                                  //     .select(activityData: [
                                                  //   Activity(
                                                  //       activityId:
                                                  //           e.id!.toString(),
                                                  //       activityImage:
                                                  //           'https://firebasestorage.googleapis.com/v0/b/wellbeing-d0969.appspot.com/o/Classical.png?alt=media&token=0eff763c-14df-45d4-bfda-dd142f5b310a',
                                                  //       activityName:
                                                  //           "Painting",
                                                  //       songUrl: e.filepath!,
                                                  //       subTitle: '',
                                                  //       type: 'paint')
                                                  // ], selectedIndex: 0));
                                                },
                                                imagePath: Uint8List.fromList(
                                                    e.image!)),
                                          ))
                                      .toList()),
                        ],
                      ),
                    );
                  },
                  initial: () {
                    return const SizedBox();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    final bloc = BlocProvider.of<ProjectsFetchBloc>(context);
    bloc.add(const ProjectsFetchEvent.projectsFetch());
  }
}
