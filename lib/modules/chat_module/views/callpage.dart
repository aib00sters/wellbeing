import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/callcredential_bloc/bloc/callcredential_bloc.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


ZegoUIKitPrebuiltCallController zegocontroller =
    ZegoUIKitPrebuiltCallController();

class CallPage extends StatefulWidget {
  final String callID;
  final String callername;
  final String type;

  const CallPage({
    super.key,
    required this.callID,
    required this.callername,
    required this.type,
  });

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CallcredentialBloc, CallcredentialState>(
        builder: (context, state) {
          return state.when(initial: () {
            return const CircularProgressIndicator();
          }, sucess: (appId, appsign) {
            printer("sucessstateid=$appId");
            printer("sucessstateappsign=$appsign");
            //  return ZegoUIKitPrebuiltCall(
            //   controller: zegocontroller,
            //   appID: int.parse(appId),
            //   appSign: appsign,
            //   userID: widget.callername,
            //   userName: widget.callername,
            //   callID: widget.callID,
            //   config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
            //     ..onOnlySelfInRoom = (a) => Navigator.of(context).pop(),
            // );
            if (widget.type == "video") {
              return ZegoUIKitPrebuiltCall(

                  // controller: zegocontroller,
                  appID: int.parse(appId),
                  appSign: appsign,
                  userID: widget.callername,
                  userName: widget.callername,
                  callID: widget.callID,
                  config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
                  // ..= (a) => Navigator.of(context).pop(),
                  );
            } else {
              return ZegoUIKitPrebuiltCall(
                  // controller: zegocontroller,
                  appID: int.parse(appId),
                  appSign: appsign,
                  userID: widget.callername,
                  userName: widget.callername,
                  callID: widget.callID,
                  config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall()
                  // ..onOnlySelfInRoom = (a) => Navigator.of(context).pop(),
                  );
            }
          }, error: () {
            return const Center(
              child: Text("Error"),
            );
          }, loading: () {
            return const CircularProgressIndicator();
          });
        },
      ),
    );
  }

  @override
  void initState() {
    final callcrentialBloc = BlocProvider.of<CallcredentialBloc>(context);
    callcrentialBloc.add(const CallcredentialEvent.getCredential());
    super.initState();
  }
}
