// import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellbeings/blocs/notification_listener_bloc/notification_listener_bloc.dart';
import 'package:wellbeings/blocs/select_activity_bloc/select_activity_bloc.dart';
import 'package:wellbeings/blocs/uni_link_listener_bloc/uni_link_listener_bloc.dart';
import 'package:wellbeings/data/data_center/data_to_classes.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/aiaisstantadd_bloc/aichatbot_bloc.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/getassistantpicsbloc/bloc/getassistant_bloc.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/selectImagebloc/bloc/selectimage_bloc.dart';
import 'package:wellbeings/modules/aichatbotcreation_module/bloc/selectaiassistantpic/bloc/selectaiassistant_bloc.dart';
import 'package:wellbeings/modules/avathar_speaking_module/bloc/avathar_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/addparticiantbloc/bloc/addparticipant_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/bloc/backgroundimagepick_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/chatai_bloc/bloc/chatai_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/get_history_bloc/bloc/gethistory_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/webrtcspeak_bloc.dart';

import 'package:wellbeings/modules/chat_call_module/blocs/speechtotextbloc/bloc/speechtotext_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/callcredential_bloc/bloc/callcredential_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/chat_bloc/chat_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/create_community_bloc/create_community_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/group_members_bloc/group_members_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/message_list_bloc/message_list_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/non_members_list_bloc/non_members_list_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/paint_gallery_bloc/paint_gallery_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/select_users_bloc/select_users_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/send_message_bloc/send_message_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/upload_image_bloc/upload_image_bloc.dart';
import 'package:wellbeings/modules/chat_module/bloc/user_list_bloc/user_list_bloc.dart';
import 'package:wellbeings/modules/friends_circle_module/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/aibotdetails_bloc/bloc/aibotdetails_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/aibotdetailsnew_bloc/bloc/aibotdata_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/appapdate_bloc/bloc/appupdate_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/check_in_bloc/check_in_bloc_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/create_session/bloc/session_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/recent_activities_bloc/recent_activities_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/session_bloc/bloc/sessiondata_bloc.dart';
import 'package:wellbeings/modules/home_module/blocs/subscribe_topics_bloc/subscribe_topics_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/age_selection_bloc/age_selection_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/avatar_generatio_bloc/avathar_generation_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/login_bloc/login_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/personal_survey_bloc/personal_survey_bloc.dart';
import 'package:wellbeings/modules/relax&sleepmodule/bloc/item_listing_bloc/relax_bloc.dart';
import 'package:wellbeings/modules/relax&sleepmodule/bloc/load_category_bloc/load_cat_bloc.dart';
import 'package:wellbeings/modules/settings_module/bloc/feedback_bloc/bloc/feedback_bloc.dart';
import 'package:wellbeings/modules/tellusastory_module/bloc/notesbloc/bloc/takenote_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/convert_speecttotext_bloc/bloc/convertspeech_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/recording_list_bloc/recording_list_bloc.dart';
import 'package:wellbeings/modules/voice_recorder_module/blocs/save_recordings_bloc/save_recordings_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_routes.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

import 'constants/app_colors.dart';
import 'modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/bloc/chatcompletion_bloc.dart';
import 'modules/chat_module/bloc/chat_list_bloc/chat_list_bloc.dart';
import 'modules/chat_module/bloc/community_widget_bloc/community_widget_bloc.dart';
import 'modules/friends_circle_module/bloc/add_friend_bloc/add_friend_bloc.dart';
import 'modules/friends_circle_module/bloc/friend_request_list_bloc/friend_requests_list_bloc.dart';
import 'modules/friends_circle_module/bloc/friends_list_bloc/friends_list_bloc.dart';
import 'modules/login_module/blocs/avatar_list_bloc/avatars_list_bloc.dart';
import 'modules/login_module/blocs/questionnaire_bloc/questionnaire_bloc.dart';
import 'modules/login_module/blocs/username_validation_bloc/username_validation_bloc.dart';
import 'modules/paint_module/blocs/load_painting_bloc/load_painting_bloc.dart';
import 'modules/paint_module/blocs/project_save_bloc/project_list_bloc.dart';
import 'modules/paint_module/blocs/projects_fetch_bloc/projects_fetch_bloc.dart';
import 'modules/profile_module/bloc/profile_bloc/profile_bloc.dart';
import 'utilities/firebase_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      "pk_test_51QplZk2f9I19XnYt2NMnanZeA1YoLhGFRXizwP6Gp80LS1czk9kTTHjB6PJqB4NTAB1FaRCyBYKXEfSwLOZ0JNEJ00m6OQnUly";

  await Stripe.instance.applySettings();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  ZegoUIKitPrebuiltCallInvitationService()
      .setNavigatorKey(AppNavigator.navigatorKey);

  await IsarServices().openDB();
  // await FireBaseServices().setupFirebase(version: 'production');
  await FireBaseServices().setupFirebase(version: 'production');
  FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  User? user = FirebaseAuth.instance.currentUser;

  await IsarServices().cameras();
  // AwesomeNotifications().initialize(
  //   null,
  //   [
  //     NotificationChannel(
  //       playSound: true,
  //       channelGroupKey: 'reminders',
  //       channelKey: 'instant_notification',
  //       channelName: 'Basic Instant Notification',
  //       channelDescription:
  //           'Notification channel that can trigger notification instantly.',
  //       channelShowBadge: true,
  //       defaultColor: const Color(0xFF9D50DD),
  //       criticalAlerts: true,
  //       ledColor: Colors.red,
  //     ),
  //   ],
  // );
  // ZegoUIKit().initLog().then((value) async {
  //   ZegoUIKitPrebuiltCallInvitationService().useSystemCallingUI(
  //     [ZegoUIKitSignalingPlugin()],
  //   );

  ZegoUIKitPrebuiltCallInvitationService().useSystemCallingUI(
    [ZegoUIKitSignalingPlugin()],
  );

  runApp(MyApp(
    initialRoute: await IsarServices().isLoggedIn() ? "/home" : "/welcome",
  ));
}

class MyApp extends StatelessWidget {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final String initialRoute;

  MyApp({super.key, required this.initialRoute});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _firebaseMessaging.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        // Handle the initial message when the app was closed
        _handleNotificationData(message);
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Handle foreground messages (when the app is in the foreground)
      _handleNotificationDataforground(message);
      //_showIncomingCallDialog(context, message);
    });

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFF000000),
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Color(0xFF90C5E7)));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MultiBlocProvider(
          providers: [
            BlocProvider<AvatharBloc>(
              create: (context) => AvatharBloc(),
            ),
            BlocProvider<QuestionnaireBloc>(
              create: (context) => QuestionnaireBloc(),
            ),
            BlocProvider<AibotdetailsBloc>(
              create: (context) => AibotdetailsBloc(),
            ),
            BlocProvider<RecentActivitiesBloc>(
              create: (context) => RecentActivitiesBloc()
                ..add(const RecentActivitiesEvent.listenEvent()),
            ),
            BlocProvider<SelectActivityBloc>(
              create: (context) => SelectActivityBloc(),
            ),
            BlocProvider<ProjectListBloc>(
              create: (context) => ProjectListBloc(),
            ),
            BlocProvider<AvatarsListBloc>(
              create: (context) => AvatarsListBloc(),
            ),
            BlocProvider<ProjectsFetchBloc>(
              create: (context) => ProjectsFetchBloc(),
            ),
            BlocProvider<LoadPaintingBloc>(
              create: (context) => LoadPaintingBloc(),
            ),
            BlocProvider<SaveRecordingsBloc>(
              create: (context) => SaveRecordingsBloc(),
            ),
            BlocProvider<HomePageBloc>(
              create: (context) => HomePageBloc(),
            ),
            BlocProvider<UniLinkListenerBloc>(
              create: (context) => UniLinkListenerBloc()
                ..add(const UniLinkListenerEvent.listen()),
            ),
            BlocProvider<CheckInBlocBloc>(
              create: (context) => CheckInBlocBloc()
                ..add(const CheckInBlocEvent.fetchCheckInDate()),
            ),
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(),
            ),
            BlocProvider<ChatBloc>(
              create: (context) => ChatBloc(),
            ),
            BlocProvider<MessageListBloc>(
              create: (context) => MessageListBloc(),
            ),
            BlocProvider<SendMessageBloc>(
              create: (context) => SendMessageBloc(),
            ),
            BlocProvider<AgeSelectionBloc>(
              create: (context) => AgeSelectionBloc()
                ..add(const AgeSelectionEvent.fetchAgeGroup()),
            ),
            BlocProvider<PersonalSurveyBloc>(
              create: (context) => PersonalSurveyBloc(),
            ),
            BlocProvider<PaintGalleryBloc>(
              create: (context) => PaintGalleryBloc(),
            ),
            BlocProvider<UserListBloc>(
              create: (context) => UserListBloc(),
            ),
            BlocProvider<UserListBloc>(
              create: (context) => UserListBloc(),
            ),
            BlocProvider<SelectUsersBloc>(
              create: (context) => SelectUsersBloc(),
            ),
            BlocProvider<UploadImageBloc>(
              create: (context) => UploadImageBloc(),
            ),
            BlocProvider<CreateCommunityBloc>(
              create: (context) => CreateCommunityBloc(),
            ),
            BlocProvider<SpeechtotextBloc>(
              create: (context) => SpeechtotextBloc(),
            ),
            BlocProvider<AddFriendBloc>(
              create: (context) => AddFriendBloc(),
            ),
            BlocProvider<GroupMembersBloc>(
              create: (context) => GroupMembersBloc(),
            ),
            BlocProvider<ProfileBloc>(
              create: (context) => ProfileBloc(),
            ),
            BlocProvider<SubscribeTopicsBloc>(
              create: (context) => SubscribeTopicsBloc(),
            ),
            BlocProvider<NonMembersListBloc>(
              create: (context) => NonMembersListBloc(),
            ),
            BlocProvider<FriendRequestsBloc>(
              create: (context) => FriendRequestsBloc(),
            ),
            BlocProvider<UsernameValidationBloc>(
              create: (context) => UsernameValidationBloc(),
            ),
            BlocProvider<ChatListBloc>(
              create: (context) => ChatListBloc(),
            ),
            BlocProvider<FriendRequestsListBloc>(
              create: (context) => FriendRequestsListBloc(),
            ),
            BlocProvider<FriendsListBloc>(
              create: (context) => FriendsListBloc(),
            ),
            BlocProvider<NotificationListenerBloc>(
              create: (context) => NotificationListenerBloc()
                ..add(const NotificationListenerEvent.listen()),
            ),
            BlocProvider<CommunityWidgetBloc>(
              create: (context) => CommunityWidgetBloc(),
            ),
            BlocProvider<CallcredentialBloc>(
              create: (context) => CallcredentialBloc(),
            ),
            BlocProvider<RelaxBloc>(
              create: (context) => RelaxBloc(),
            ),
            BlocProvider<BackgroundimagepickBloc>(
              create: (context) => BackgroundimagepickBloc(),
            ),
            BlocProvider<AddparticipantBloc>(
              create: (context) => AddparticipantBloc(),
            ),
            BlocProvider<TakenoteBloc>(
              create: (context) => TakenoteBloc(),
            ),
            BlocProvider<AichatbotBloc>(
              create: (context) => AichatbotBloc(),
            ),
            BlocProvider<GetassistantBloc>(
                create: (context) => GetassistantBloc()),
            BlocProvider<SelectaiassistantBloc>(
                create: (context) => SelectaiassistantBloc()),
            BlocProvider<SelectimageBloc>(
                create: (context) => SelectimageBloc()),
            BlocProvider<LoadCatBloc>(
              create: (context) => LoadCatBloc(),
            ),
            BlocProvider<AppupdateBloc>(
              create: (context) => AppupdateBloc(),
            ),
            BlocProvider<AvatharGenerationBloc>(
              create: (context) => AvatharGenerationBloc(),
            ),
            BlocProvider<ConvertspeechBloc>(
              create: (context) => ConvertspeechBloc(),
            ),
            BlocProvider<FeedbackBloc>(
              create: (context) => FeedbackBloc(),
            ),
            BlocProvider<AibotdataBloc>(
              create: (context) => AibotdataBloc(),
            ),
            BlocProvider<SessionBloc>(
              create: (context) => SessionBloc(),
            ),
            BlocProvider<GethistoryBloc>(
              create: (context) => GethistoryBloc(),
            ),
            BlocProvider<SessiondataBloc>(
              create: (context) => SessiondataBloc(),
            ),
            BlocProvider<WebrtcspeakBloc>(
              create: (context) => WebrtcspeakBloc(),
            ),
            BlocProvider<ChatcompletionBloc>(
              create: (context) => ChatcompletionBloc(),
            ),
            BlocProvider<ChataiBloc>(
              create: (context) => ChataiBloc(context.read<WebrtcspeakBloc>()),
            ),
            BlocProvider(
                create: (context) => RecordingListBloc()
                  ..add(const RecordingListEvent.fetchList())),
          ],
          child: MaterialApp(
            navigatorObservers: [
              FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)
            ],
            debugShowCheckedModeBanner: false,
            title: 'Wellbeings',
            theme: ThemeData(
              primarySwatch: AppColors.primarySwatch,
              fontFamily: GoogleFonts.lato().fontFamily,
            ),
            navigatorKey: AppNavigator.navigatorKey,
            onGenerateRoute: RouteEngine.generateRoute,
            scaffoldMessengerKey: scaffoldMsgKey,
            initialRoute: initialRoute,
          ),
        );
      });
    });
  }

  void _handleNotificationData(RemoteMessage message) {
    if (message.data['key2'] == 'chat') {
      // AppNavigator.pushNamed('/chatList');
    } else if (message.data['key2'] == 'request') {
      AppNavigator.pushNamed('/friendRequest');
    } else if (message.data['key2'].toString().contains("call")) {
      var callparams = message.data['key2'].toString().split('-');
      AppNavigator.pushNamed('/callattendpage',
          arguments:
              DataToCallPage(callparams[1], callparams[2], callparams[3]));
    }
  }

  void _handleNotificationDataforground(RemoteMessage message) {
    print(message);
    if (message.data['key2'] == 'chat') {
      // AppNavigator.pushNamed('/chatList');
    } else if (message.data['key2'] == 'request') {
      AppNavigator.pushNamed('/friendRequest');
    } else if (message.data['type'].toString().contains("call")) {
      var callparams = message.data['type'].toString().split('-');
      AppNavigator.pushNamed('/callattendpage',
          arguments:
              DataToCallPage(callparams[1], callparams[2], callparams[3]));
    }
  }
}
