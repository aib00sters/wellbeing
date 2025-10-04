import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/modules/avathar_speaking_module/bloc/avathar_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/webrtcspeak_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/views/speakvideo.dart';

class stream extends StatefulWidget {
  const stream({super.key});

  @override
  State<stream> createState() => _streamState();
}

class _streamState extends State<stream> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                  onPressed: () {
                    final homeDataBloc =
                        BlocProvider.of<WebrtcspeakBloc>(context);
                    homeDataBloc
                        .add(const WebrtcspeakEvent.callavathar(imageurl: ""));

                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => const WebRTCVideoPlayer(),
                    // ));
                  },
                  child: const Text("button")))
        ],
      ),
    );
  }
}
