import 'dart:io';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/widgets/button_widget.dart';

import '../../../utilities/app_styles.dart';
import '../../meditaion_module/models/meditation_model/meditation_model.dart';
import 'common.dart';

class AudioMetadata {
  final String album;
  final String title;
  final Widget artwork;

  AudioMetadata({
    required this.album,
    required this.title,
    required this.artwork,
  });
}

class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  const ControlButtons(this.player, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // IconButton(
        //   icon: const Icon(Icons.volume_up),
        //   onPressed: () {
        //     showSliderDialog(
        //         context: context,
        //         title: "Adjust volume",
        //         divisions: 10,
        //         min: 0.0,
        //         max: 1.0,
        //         value: player.volume,
        //         stream: player.volumeStream,
        //         onChanged: player.setVolume);
        //   },
        // ),
        StreamBuilder<SequenceState?>(
          stream: player.sequenceStateStream,
          builder: (context, snapshot) => IconButton(
            icon: const Icon(
              Icons.skip_previous,
              size: 35,
            ),
            onPressed: player.hasPrevious ? player.seekToPrevious : null,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        StreamBuilder<PlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (processingState == ProcessingState.loading ||
                processingState == ProcessingState.buffering) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                width: 64.0,
                height: 64.0,
                child: const CircularProgressIndicator(),
              );
            } else if (playing != true) {
              return GradientButton(
                height: 64,
                width: 64,
                onTap: player.play,
                child: const Icon(
                  Icons.play_arrow_rounded,
                  size: 64.0,
                  color: AppColors.appBGColor,
                ),
              );
            } else if (processingState != ProcessingState.completed) {
              return GradientButton(
                height: 64,
                width: 64,
                onTap: player.pause,
                child: const Icon(
                  Icons.pause_rounded,
                  size: 64.0,
                  color: AppColors.appBGColor,
                ),
              );
            } else {
              return IconButton(
                icon: const Icon(Icons.replay),
                iconSize: 64.0,
                onPressed: () => player.seek(Duration.zero,
                    index: player.effectiveIndices!.first),
              );
            }
          },
        ),
        const SizedBox(
          width: 20,
        ),

        StreamBuilder<SequenceState?>(
          stream: player.sequenceStateStream,
          builder: (context, snapshot) => IconButton(
            icon: const Icon(
              Icons.skip_next,
              size: 35,
            ),
            onPressed: player.hasNext ? player.seekToNext : null,
          ),
        ),
        // StreamBuilder<double>(
        //   stream: player.speedStream,
        //   builder: (context, snapshot) => IconButton(
        //     icon: Text("${snapshot.data?.toStringAsFixed(1)}x",
        //         style: const TextStyle(fontWeight: FontWeight.bold)),
        //     onPressed: () {
        //       showSliderDialog(
        //         context: context,
        //         title: "Adjust speed",
        //         divisions: 10,
        //         min: 0.5,
        //         max: 1.5,
        //         value: player.speed,
        //         stream: player.speedStream,
        //         onChanged: player.setSpeed,
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}

class MusicPlayerPage extends StatefulWidget {
  final List<Activity> playlist;
  const MusicPlayerPage({super.key, required this.playlist});

  @override
  State<MusicPlayerPage> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage>
    with WidgetsBindingObserver {
  late AudioPlayer _player;

  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  late ConcatenatingAudioSource _playlist;

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _player.positionStream,
          _player.bufferedPositionStream,
          _player.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 184, 221, 245),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: StreamBuilder<SequenceState?>(
                  stream: _player.sequenceStateStream,
                  builder: (context, snapshot) {
                    final state = snapshot.data;
                    if (state?.sequence.isEmpty ?? true) {
                      return const SizedBox();
                    }
                    final metadata = state!.currentSource!.tag as AudioMetadata;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: (metadata.artwork)),
                          ),
                        ),
                        Text(metadata.album,
                            style: Theme.of(context).textTheme.titleLarge),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          metadata.title,
                          style: AppTextStyle.commonTextStyle(),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                ),
              ),
              ControlButtons(_player),
              StreamBuilder<PositionData>(
                stream: _positionDataStream,
                builder: (context, snapshot) {
                  final positionData = snapshot.data;
                  return SeekBar(
                    duration: positionData?.duration ?? Duration.zero,
                    position: positionData?.position ?? Duration.zero,
                    bufferedPosition:
                        positionData?.bufferedPosition ?? Duration.zero,
                    onChangeEnd: (newPosition) {
                      _player.seek(newPosition);
                    },
                  );
                },
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Playlist",
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 240.0,
                  child: StreamBuilder<SequenceState?>(
                    stream: _player.sequenceStateStream,
                    builder: (context, snapshot) {
                      final state = snapshot.data;
                      final sequence = state?.sequence ?? [];
                      return ReorderableListView(
                        onReorder: (int oldIndex, int newIndex) {
                          if (oldIndex < newIndex) newIndex--;
                          _playlist.move(oldIndex, newIndex);
                        },
                        children: [
                          for (var i = 0; i < sequence.length; i++)
                            Dismissible(
                              key: ValueKey(sequence[i]),
                              background: Container(
                                color: Colors.redAccent,
                                alignment: Alignment.centerRight,
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  child:
                                      Icon(Icons.delete, color: Colors.white),
                                ),
                              ),
                              onDismissed: (dismissDirection) {
                                _playlist.removeAt(i);
                              },
                              child: Material(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: i == state!.currentIndex
                                    ? null
                                    : Colors.transparent,
                                child: ListTile(
                                  title: Text(sequence[i].tag.album as String),
                                  onTap: () {
                                    _player.seek(Duration.zero, index: i);
                                  },
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    ambiguate(WidgetsBinding.instance)!.removeObserver(this);
    _player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _playlist = ConcatenatingAudioSource(
        children:
            List<AudioSource>.from(widget.playlist.map((e) => e.type == 'music'
                ? AudioSource.uri(
                    Uri.parse(e.songUrl),
                    tag: AudioMetadata(
                      album: e.activityName,
                      title: e.subTitle,
                      artwork: Image.network(e.activityImage),
                    ),
                  )
                : Platform.isAndroid
                    ? AudioSource.file(
                        (e.songUrl),
                        tag: AudioMetadata(
                          album: e.activityName,
                          title: e.subTitle,
                          artwork: const Icon(
                            Icons.music_note,
                            size: 50,
                          ),
                        ),
                      )
                    : AudioSource.file((_getImageDataFromPath(e.songUrl)),
                        tag: AudioMetadata(
                          album: e.activityName,
                          title: e.subTitle,
                          artwork: const Icon(
                            Icons.music_note,
                            size: 50,
                          ),
                        )))));
    ambiguate(WidgetsBinding.instance)!.addObserver(this);
    _player = AudioPlayer();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    _init();
    super.initState();
  }

  String _getImageDataFromPath(String filePath) {
    final Uri uri = Uri.parse(filePath);

    String relativePath = uri.path;

    return relativePath;
  }

  Future<void> _init() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    // Listen to errors during playback.
    _player.playbackEventStream
        .listen((event) {}, onError: (Object e, StackTrace stackTrace) {});
    try {
      await _player.setAudioSource(_playlist, preload: true);
    } catch (e) {
      // Catch load errors: 404, invalid url...
    }
    // Show a snackbar whenever reaching the end of an item in the playlist.
    _player.positionDiscontinuityStream.listen((discontinuity) {
      if (discontinuity.reason == PositionDiscontinuityReason.autoAdvance) {
        _showItemFinished(discontinuity.previousEvent.currentIndex);
      }
    });
    _player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        _showItemFinished(_player.currentIndex);
      }
    });
  }

  void _showItemFinished(int? index) {
    if (index == null) return;
    final sequence = _player.sequence;
    if (sequence == null) return;
    final source = sequence[index];
    final metadata = source.tag as AudioMetadata;
    _scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      content: Text('Finished playing ${metadata.title}'),
      duration: const Duration(seconds: 1),
    ));
  }
}
