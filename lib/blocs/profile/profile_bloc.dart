import 'package:bloc/bloc.dart';
import 'package:elearning_20/blocs/profile/profile.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  @override
  ProfileState get initialState => ProfileInitial();

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is OverviewTabPressed) {
      yield OverviewInitial();
    }
    if (event is CoursesTabPressed) {
      yield CoursesInitial();
    }
    if (event is CertificationsTabPressed) {
      yield CertificationsInitial();
    }
  }
}
