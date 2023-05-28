import 'package:tasks_flutter_one/features/home/contract/home_contract.dart';
import '../../../core/router_navigation.dart';

class HomePresenterImpl extends Navigation implements HomePresenter {
  HomeView _view;

  HomePresenterImpl(this._view);

  @override
  void dispose() {}

  @override
  getView() => _view;

  @override
  void init() {}

  @override
  void onCLickAddTask() {
    _view.sendCallNavigateHome();
  }

  @override
  void navigateToHomeAddTaskScreen(context) {
    navigateHomeAddTask(context);
  }
}
