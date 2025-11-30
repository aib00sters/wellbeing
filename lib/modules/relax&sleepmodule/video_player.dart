import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:wellbeings/data/data_center/data_to_classes.dart';

class VideoPlayerScreen extends StatefulWidget {
  final DataToMediapages dataToMediapages;
  const VideoPlayerScreen({super.key, required this.dataToMediapages});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;
  bool _isLoading = true;
  bool _hasError = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  Future<void> _initializeVideoPlayer() async {
    try {
      setState(() {
        _isLoading = true;
        _hasError = false;
      });

      _videoController = VideoPlayerController.network(
        widget.dataToMediapages.filePath,
      );

      // Wait for video to initialize
      await _videoController.initialize();

      // Create Chewie controller only after video is initialized
      _chewieController = ChewieController(
        videoPlayerController: _videoController,
        autoPlay: true,
        looping: true,
        allowMuting: true,
        allowPlaybackSpeedChanging: true,
        showControlsOnInitialize: false,
        materialProgressColors: ChewieProgressColors(
          playedColor: Colors.redAccent,
          handleColor: Colors.blue,
          backgroundColor: Colors.grey,
          bufferedColor: Colors.lightGreenAccent,
        ),
        placeholder: Container(
          color: Colors.black,
          child: const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
        ),
        autoInitialize: true,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  color: Colors.white,
                  size: 50,
                ),
                const SizedBox(height: 16),
                Text(
                  'Failed to load video',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white70,
                      ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _retryVideoLoading,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        },
      );

      setState(() {
        _isLoading = false;
      });
    } catch (error) {
      setState(() {
        _isLoading = false;
        _hasError = true;
        _errorMessage = error.toString();
      });
    }
  }

  void _retryVideoLoading() {
    _disposeControllers();
    _initializeVideoPlayer();
  }

  void _disposeControllers() {
    _videoController.dispose();
    _chewieController?.dispose();
    _chewieController = null;
  }

  void _seekBackward() {
    final currentPosition = _videoController.value.position;
    final newPosition = currentPosition - const Duration(seconds: 10);
    if (newPosition.inSeconds < 0) {
      _videoController.seekTo(Duration.zero);
    } else {
      _videoController.seekTo(newPosition);
    }
  }

  void _seekForward() {
    final currentPosition = _videoController.value.position;
    final duration = _videoController.value.duration;
    final newPosition = currentPosition + const Duration(seconds: 10);
    if (newPosition > duration) {
      _videoController.seekTo(duration);
    } else {
      _videoController.seekTo(newPosition);
    }
  }

  Widget _buildLoadingState() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
          SizedBox(height: 16),
          Text(
            'Loading video...',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              color: Colors.white,
              size: 64,
            ),
            const SizedBox(height: 16),
            Text(
              'Video Loading Failed',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              _errorMessage ?? 'Unknown error occurred',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white70,
                  ),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: _retryVideoLoading,
              icon: const Icon(Icons.refresh),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPlayer() {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          // Swiped Right - Seek backward
          _seekBackward();
        } else if (details.primaryVelocity! < 0) {
          // Swiped Left - Seek forward
          _seekForward();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.9),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: AspectRatio(
          aspectRatio: _videoController.value.aspectRatio,
          child: Chewie(
            controller: _chewieController!,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          widget.dataToMediapages.fileTitle ?? 'Video Player',
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          if (_hasError)
            IconButton(
              onPressed: _retryVideoLoading,
              icon: const Icon(Icons.refresh),
              tooltip: 'Reload video',
            ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey, Colors.black],
          ),
        ),
        child: Center(
          child: _isLoading
              ? _buildLoadingState()
              : _hasError
                  ? _buildErrorState()
                  : _buildVideoPlayer(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _disposeControllers();
    super.dispose();
  }
}
