part of 'community_widget_bloc.dart';

@freezed
class CommunityWidgetEvent with _$CommunityWidgetEvent {
  const factory CommunityWidgetEvent.loadWidget(
          {required List<DataToCommunityWidget> dataToCommunityWidgetLise}) =
      _LoadWidget;
  const factory CommunityWidgetEvent.started() = _Started;
}
