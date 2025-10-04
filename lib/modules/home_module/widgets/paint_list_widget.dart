import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utilities/app_styles.dart';
import '../../../utilities/size_config.dart';
import '../../paint_module/blocs/project_save_bloc/project_list_bloc.dart';

typedef OnDelete<T> = Function(T);
typedef OnTap<T> = Function(T);

class PaintListWidget extends StatefulWidget {
  final String activityName;
  final String duration;
  final OnTap ontap;
  final Uint8List imagePath;
  final bool selected;
  final String filepath;

  final int id;
  const PaintListWidget(
      {super.key,
      required this.activityName,
      required this.duration,
      required this.ontap,
      required this.imagePath,
      required this.selected,
      required this.filepath,
      required this.id});

  @override
  State<PaintListWidget> createState() => _PaintListWidgetState();
}

class _PaintListWidgetState extends State<PaintListWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.selected == false
        ? Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: SizeConfig.sizeMultiplier * 43,
            width: SizeConfig.sizeMultiplier * 38,
            child: InkWell(
              onTap: () => widget.ontap(true),
              child: Card(
                color: const Color(0xffd8fbfa),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        height: SizeConfig.sizeMultiplier * 53,
                        width: SizeConfig.sizeMultiplier * 38,
                        child: Image.memory(widget.imagePath),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      left: 0,
                      child: Center(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 0,
                          margin: const EdgeInsets.only(bottom: 0),
                          child: SizedBox(
                            height: SizeConfig.sizeMultiplier * 16,
                            width: SizeConfig.sizeMultiplier * 31,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.activityName,
                                    maxLines: 2,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextStyle.titleTextStyle(
                                      fontSize: SizeConfig.textMultiplier * 2.8,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  if (widget.duration.isNotEmpty)
                                    Text(
                                      widget.duration,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        height: 1.2,
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            SizeConfig.textMultiplier * 2.4,
                                        color: const Color(0XFF908788),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : InkWell(
            onTap: () {},
            child: Card(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 3,
              child: SizedBox(
                  height: SizeConfig.sizeMultiplier * 40.5,
                  width: SizeConfig.sizeMultiplier * 38,
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          final deleteBloc =
                              BlocProvider.of<ProjectListBloc>(context);
                          deleteBloc.add(ProjectListEvent.projectDelete(
                              widget.id, widget.filepath));
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 30,
                        )),
                  )),
            ),
          );
  }
}
