import 'package:flutter/material.dart';
import 'package:wellbeings/modules/chat_bot_modeule/views/chat_home.dart';

import 'package:wellbeings/modules/chat_module/views/callattend.dart';
import 'package:wellbeings/modules/chat_module/views/callpage.dart';
import 'package:wellbeings/modules/chat_module/views/chat_list_page.dart';
import 'package:wellbeings/modules/chat_module/views/chat_page.dart';
import 'package:wellbeings/modules/chat_module/views/create_community_page.dart';
import 'package:wellbeings/modules/chat_module/views/group_members_page.dart';
import 'package:wellbeings/modules/chat_module/views/painting_gallery.dart';
import 'package:wellbeings/modules/chat_module/views/select_users_page.dart';
import 'package:wellbeings/modules/chat_module/views/user_list_page.dart';
import 'package:wellbeings/modules/doctors_module/doctorsmain_page.dart';
import 'package:wellbeings/modules/doctors_module/views/doctorsslot_booking_page.dart';
import 'package:wellbeings/modules/doctors_module/views/doctors_list_module.dart';
import 'package:wellbeings/modules/friends_circle_module/views/add_friend_page.dart';
import 'package:wellbeings/modules/friends_circle_module/views/friend_request_page.dart';
import 'package:wellbeings/modules/home_module/views/home_page.dart';
import 'package:wellbeings/modules/login_module/views/age_select_page.dart';
import 'package:wellbeings/modules/login_module/views/avatar_genrate_page.dart';
import 'package:wellbeings/modules/login_module/views/avatar_selection_page.dart';
import 'package:wellbeings/modules/login_module/views/coupon_page.dart';
import 'package:wellbeings/modules/login_module/views/enter_name.dart';
import 'package:wellbeings/modules/login_module/views/otp_page.dart';
import 'package:wellbeings/modules/login_module/views/phone_page.dart';
import 'package:wellbeings/modules/login_module/views/sign_up_page.dart';
import 'package:wellbeings/modules/login_module/views/personal_survey_page.dart';
import 'package:wellbeings/modules/login_module/views/questionnaire.dart';
import 'package:wellbeings/modules/login_module/views/select_gender_page.dart';
import 'package:wellbeings/modules/login_module/views/signinpage.dart';
import 'package:wellbeings/modules/login_module/views/welcome_page.dart';
import 'package:wellbeings/modules/meditaion_module/models/meditation_model/meditation_model.dart';
import 'package:wellbeings/modules/music_player_module/views/music_player_page.dart';
import 'package:wellbeings/modules/new_home_page/pages/new_chat_page.dart';
import 'package:wellbeings/modules/new_home_page/pages/new_main_home_page.dart';
import 'package:wellbeings/modules/paint_module/views/paint_page.dart';
import 'package:wellbeings/modules/relax&sleepmodule/audio_player.dart';
import 'package:wellbeings/modules/relax&sleepmodule/relax_page.dart';
import 'package:wellbeings/modules/relax&sleepmodule/video_player.dart';
import 'package:wellbeings/modules/settings_module/views/settings_page.dart';
import 'package:wellbeings/modules/tellusastory_module/pages/tellusastory.dart';
import 'package:wellbeings/modules/voice_activities_module/views/voice_activities_page.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/music_player_loading_page.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/recordings_list.dart';
import 'package:wellbeings/modules/voice_recorder_module/views/voice_recorder_page.dart';

import '../data/data_center/data_to_classes.dart';
import '../modules/chat_bot_modeule/views/chat_home_page.dart';
import '../modules/paint_module/views/paint_list_page.dart';
import '../modules/profile_module/views/profile_page.dart';

class RouteEngine {
  static Object? args;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    args = settings.arguments;
    switch (settings.name) {
      case '/welcome':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/welcome"),
          maintainState: true,
          builder: (_) => const WelcomePage(),
        );
      case '/home':
        return MaterialPageRoute(
            settings: const RouteSettings(name: "/home"),
            maintainState: true,
            builder: (_) => const HomePage()
            //const HomePage(),
            );
      case '/avatarSelection':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/avatarSelection"),
          maintainState: true,
          builder: (_) => const AvatarSelectionPage(),
        );
      case '/questionnaire':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/questionnaire"),
          maintainState: true,
          builder: (_) => const QuestionnairePage(),
        );
      case '/paintPage':
        // List<Activity> data = settings.arguments as List<Activity>;
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/paintPage"),
          maintainState: true,
          builder: (_) => const PaintPage(),
          //  path: data.isNotEmpty ? data.first.songUrl : '',
          // isarId: data.isNotEmpty
          //     ? int.parse(data.first.activityId.toString())
          //     : -1
        );
      case '/paintprojetspage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/paintprojetspage"),
          maintainState: true,
          builder: (_) => const PaintProjectspage(),
        );
      case '/profilepage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/profilepage"),
          maintainState: true,
          builder: (_) => const ProfilePage(),
        );
      case '/voiceActivitiesPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/voiceActivitiesPage"),
          maintainState: true,
          builder: (_) => const VoiceActivitiesPage(),
        );
      case '/settings':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/settings"),
          maintainState: true,
          builder: (_) => const SettingsPage(),
        );
      case '/musicLoadingPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/musicLoadingPage"),
          maintainState: true,
          builder: (_) => const MusicPlayerLoadingPage(),
        );
      case '/voiceRecorderPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/voiceRecorderPage"),
          maintainState: true,
          builder: (_) => const VoiceRecorderPage(),
        );
      case '/enterName':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/enterName"),
          maintainState: true,
          builder: (_) => const EnterNamePage(),
        );
      case '/selectGender':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/selectGender"),
          maintainState: true,
          builder: (_) => const SelectGenderPage(),
        );

      case '/ageSelect':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/ageSelect"),
          maintainState: true,
          builder: (_) => const AgeSelectPage(),
        );
      case '/musicPlayer':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/musicPlayer"),
          maintainState: true,
          builder: (_) =>
              MusicPlayerPage(playlist: settings.arguments! as List<Activity>),
        );
      case '/recordings':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/recordings"),
          maintainState: true,
          builder: (_) => const RecordingListPage(),
        );
      case '/avatarGeneration':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/avatarGeneration"),
          maintainState: true,
          builder: (_) => const AvatarGenerationPage(),
        );
      case '/personalDetails':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/personalDetails"),
          maintainState: true,
          builder: (_) => const PersonalSurveyPage(),
        );
      case '/chatList':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/chatList"),
          maintainState: true,
          builder: (_) => const ChatListPage(),
        );

      case '/userList':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/userList"),
          maintainState: true,
          builder: (_) => const UserListPage(),
        );
      case '/chatPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/chatPage"),
          maintainState: true,
          builder: (_) => ChatPage(),
        );
      case '/addFriends':
        return MaterialPageRoute(
            settings: const RouteSettings(name: "/addFriends"),
            maintainState: true,
            builder: (_) => const AddFriendPage());

      case '/friendRequest':
        return MaterialPageRoute(
            settings: const RouteSettings(name: "/friendRequest"),
            maintainState: true,
            builder: (_) => const FriendRequestPage());
      case '/paintGallery':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/paintGallery"),
          maintainState: true,
          builder: (_) => const PaintingGalleryPage(),
        );
      case '/createCommunity':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/createCommunity"),
          maintainState: true,
          builder: (_) => const CreateCommunityPage(),
        );
      case '/selectUsers':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/selectUsers"),
          maintainState: true,
          builder: (_) => const SelectUsersPage(),
        );
      case '/groupMembersPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/groupMembersPage"),
          maintainState: true,
          builder: (_) => const GroupMembersPage(),
        );
      case '/SigninPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/SigninPage'),
          maintainState: true,
          builder: (_) => const SignInPage(),
        );
      case '/SignUpPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/SignUpPage'),
          maintainState: true,
          builder: (_) => const SignUpPage(),
        );
      case '/relaxPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/relaxPage'),
          maintainState: true,
          builder: (_) => const RelaxPage(),
        );
      case '/doctotsmainpage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/doctotsmainpage'),
          maintainState: true,
          builder: (_) => const DoctorsMainPage(),
        );
      case '/doctorslist':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/doctorslist'),
          maintainState: true,
          builder: (_) => const DoctorsListPage(),
        );
      case '/doctorsslot':
      // return MaterialPageRoute(
      //   settings: const RouteSettings(name: '/doctorsslot'),
      //   maintainState: true,
      //   builder: (_) => DoctorsSlotPage(),
      // );
      // chat boat route
      case '/chatbothome':
        DataToChatBotPage argument = args as DataToChatBotPage;
        return MaterialPageRoute(
            settings: const RouteSettings(name: "/chatbothome"),
            maintainState: true,
            builder: (_) => ChatNewPage(
                  name: argument.assstname,
                  imgUrl: argument.imgUrl,
                  assistantid: argument.assistantid,
                  sessionid: argument.sessioid,
                  herotag: argument.herotag,
                  video: argument.video,
                  iatalking: argument.istalking,
                )

            //     ChatHomePage(
            //   name: argument.assstname,
            //   imgUrl: argument.imgUrl,
            //   assistantid: argument.assistantid,
            //   herotag: argument.herotag,
            //   sessionid: argument.sessioid,
            // ),
            );

      //return MaterialPageRoute(builder: (_) => ChatHomePage(name: argument.name, imgUrl: argument.imgUrl, assistantid: argument.assistantid, threadid: argument.threadid, herotag: argument.herotag,));

      // case '/callpage':
      //   DataToCallPage argument = args as DataToCallPage;
      //   return MaterialPageRoute(
      //     settings: const RouteSettings(name: "/callpage"),
      //     maintainState: true,
      //     builder: (_) => CallPage(
      //       callID: argument.callId,
      //       callername: argument.callerName,
      //       type: argument.type,
      //     ),
      //   );
      // case '/Speaktotext':
      //   DataToChatBotPage argument = args as DataToChatBotPage;
      //   return MaterialPageRoute(
      //     settings: const RouteSettings(name: "/Speaktotext"),
      //     maintainState: true,
      //     builder: (_) =>
      //         Speak_To_Text(name: argument.name, imgUrl: argument.imgUrl),
      //   );
      case '/callattendpage':
        DataToCallPage argument = args as DataToCallPage;
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/callattendpage"),
          maintainState: true,
          builder: (_) => CallAttendPage(
            callID: argument.callId,
            callername: argument.callerName,
            type: argument.type,
          ),
        );
      case '/TellusaStory':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/TellusaStory'),
          maintainState: true,
          builder: (_) => const TellUsaStoryPage(),
        );
      case '/callattendpage':
        DataToCallPage argument = args as DataToCallPage;
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/callattendpage"),
          maintainState: true,
          builder: (_) => CallAttendPage(
              callID: argument.callId,
              callername: argument.callerName,
              type: argument.type),
        );
      case '/audioPlayer':
        DataToMediapages argument1 = args as DataToMediapages;
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/audioPlayer'),
          maintainState: true,
          builder: (_) => AudioPlayerScreen(dataToMediapages: argument1),
        );
      case '/videoPlayer':
        DataToMediapages argument2 = args as DataToMediapages;
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/videoPlayer'),
          maintainState: true,
          builder: (_) => VideoPlayerScreen(
            dataToMediapages: argument2,
          ),
        );
      case '/phonePage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/phonePage'),
          maintainState: true,
          builder: (_) => const PhoneScreen(),
        );
      case '/otpPage':
        String argument3 = args as String;
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/otpPage'),
          maintainState: true,
          builder: (_) => OtpPage(
            verificationId: argument3,
          ),
        );
      case '/couponPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/couponPage'),
          maintainState: true,
          builder: (_) => const CouponPage(),
        );
      default:
        return null;
    }
  }
}
