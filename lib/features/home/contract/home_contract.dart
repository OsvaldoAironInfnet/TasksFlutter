
import 'package:tasks_flutter_one/core/base_presenter.dart';
import 'package:tasks_flutter_one/core/base_view.dart';

abstract class HomePresenter extends BasePresenter {
  void navigateToHomeAddTaskScreen(context);
  void onCLickAddTask();
}

abstract class HomeView extends BaseView {
  void sendCallNavigateHome();
}