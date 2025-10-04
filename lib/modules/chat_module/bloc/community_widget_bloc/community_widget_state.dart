part of 'community_widget_bloc.dart';

@freezed
class CommunityWidgetState with _$CommunityWidgetState {
  const factory CommunityWidgetState.initial() = _Initial;
  const factory CommunityWidgetState.success(
          {required List<DataToCommunityWidget> dataToCommunityWidgetLise}) =
      _success;
}
