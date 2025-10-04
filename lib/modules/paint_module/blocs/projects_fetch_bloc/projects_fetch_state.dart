part of 'projects_fetch_bloc.dart';

@freezed
class ProjectsFetchState with _$ProjectsFetchState {
  const factory ProjectsFetchState.fetcherror() = _Fetcherror;
  const factory ProjectsFetchState.fetchLoading() = _FetchLoading;
  const factory ProjectsFetchState.fetchSuccess(
      {required List<PaintDetails> recentList}) = _FetchSuccess;
  const factory ProjectsFetchState.initial() = _Initial;
}
