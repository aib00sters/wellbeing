import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_drawing_board/flutter_drawing_board.dart';
import 'package:flutter_drawing_board/paint_contents.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:mime/mime.dart';
import 'package:wellbeings/modules/paint_module/views/paint_list_page.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_functions.dart';
import '../blocs/load_painting_bloc/load_painting_bloc.dart';
import '../blocs/project_save_bloc/project_list_bloc.dart';

List<Map<String, dynamic>> jasonlist = [];

final DrawingController _drawingController = DrawingController();

PaintContent draw(Map<String, dynamic> data) {
  switch (data["type"]) {
    case ('circle'):
      return Circle.fromJson(data);
    case ('SimpleLine'):
      return SimpleLine.fromJson(data);
    case ('SmoothLine'):
      return SmoothLine.fromJson(data);
    case ('StraightLine'):
      return StraightLine.fromJson(data);
    case ('Rectangle'):
      return Rectangle.fromJson(data);
    case ('Circle'):
      return Circle.fromJson(data);
    case ('Eraser'):
      return Eraser.fromJson(data);
    default:
      return SimpleLine.fromJson(data);
  }
}

class PaintPage extends StatefulWidget {
  const PaintPage({
    super.key,
  });

  @override
  State<PaintPage> createState() => _PaintPageState();
}

class _PaintPageState extends State<PaintPage> {
  late List<Map<String, dynamic>> data;
  final imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ProjectListBloc, ProjectListState>(
          listener: (context, state) {
            state.whenOrNull(
              saveLoading: () {
                context.loaderOverlay.show();
              },
              projectSaveSuccess: () {
                AppNavigator.pop();
                showSnackBar(
                    msg: "Saved",
                    icons: Icons.thumb_up,
                    iconcolor: Colors.green,
                    time: 2);
                context.loaderOverlay.hide();
                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                //     builder: (context) => const PaintProjectspage()));
                Navigator.pop(context);
              },
            );
          },
        ),
        BlocListener<LoadPaintingBloc, LoadPaintingState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (
                drawingJson,
                isarId,
                filePath,
                extImagePath,
              ) {
                if (drawingJson.isNotEmpty) {
                  var jsonList = jsonDecode(drawingJson);
                  _drawingController.addContents(
                      jsonList.map<PaintContent>((e) => draw(e)).toList());
                }
              },
            );
          },
        ),
      ],
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBGColor,
          iconTheme: const IconThemeData(color: AppColors.appBlack),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () async {
                  final loadPaintBloc =
                      BlocProvider.of<LoadPaintingBloc>(context);
                  var img =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  if (img != null) {
                    loadPaintBloc.add(
                      LoadPaintingEvent.loadProject(
                        extImagePath: img.path,
                        path: '',
                        isarId: -1,
                        isDirectPath: true,
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.file_upload_outlined)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<LoadPaintingBloc, LoadPaintingState>(
                builder: (context, state) {
                  return IconButton(
                      onPressed: () async {
                        state.whenOrNull(
                          success: (
                            drawingJson,
                            isarId,
                            filePath,
                            extImagePath,
                          ) async {
                            final savepaint =
                                BlocProvider.of<ProjectListBloc>(context);
                            var image = await _getImageData();
                            data = _getJsonList();
                            String decodeddata = jsonEncode(data);
                            if (filePath.isEmpty) {
                              if (mounted) {
                                showPaintSaveDialog(
                                    context: context,
                                    imageData: decodeddata,
                                    image: image,
                                    id: isarId);
                              }
                            } else {
                              savepaint.add(ProjectListEvent.projectSave(
                                  image, decodeddata, filePath, isarId));
                            }
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.save,
                        color: Colors.black,
                      ));
                },
              ),
            ),
          ],
        ),
        body: ScreenSetter(
            child: BlocBuilder<LoadPaintingBloc, LoadPaintingState>(
          builder: (context, state) {
            return state.whenOrNull(
                  success: (drawingJson, isarId, filePath, extImagePath) {
                    return LoaderOverlay(
                      child: DrawingBoard(
                        controller: _drawingController,
                        background: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: extImagePath.isNotEmpty
                              ? Platform.isAndroid
                                  ? Image.file(File(extImagePath))
                                  : Image.file(
                                      File(_getImageDataFromPath(extImagePath)))
                              : null,
                        ),
                        boardScaleEnabled: true,
                        boardClipBehavior: Clip.antiAlias,
                        showDefaultActions: true,
                        showDefaultTools: true,
                      ),
                    );
                  },
                ) ??
                const SizedBox();
          },
        )),
      )),
    );
  }

  @override
  void dispose() {
    _drawingController.clear();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  bool isImageOrAudio(String path) {
    final mimeType = lookupMimeType(path);

    if (mimeType!.startsWith('image/')) {
      if (kDebugMode) {
        print(mimeType.toString());
      }
      return true;
    } else {
      return false;
    }
  }

  Future<Uint8List> _getImageData() async {
    var painimage =
        (await _drawingController.getImageData())!.buffer.asUint8List();
    return painimage;
  }

  String _getImageDataFromPath(String filePath) {
    final Uri uri = Uri.parse(filePath);

    String relativePath = uri.path;
    isImageOrAudio(relativePath);
    return relativePath;
  }

  List<Map<String, dynamic>> _getJsonList() {
    var data = _drawingController.getJsonList();
    return data;
  }
}
