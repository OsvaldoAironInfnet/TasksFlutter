import 'package:flutter/material.dart';
import 'package:tasks_flutter_one/core/state/base_state.dart';
import 'package:tasks_flutter_one/core/state/base_widget_view.dart';
import 'package:tasks_flutter_one/design-ui/color/colors_resource.dart';
import 'package:tasks_flutter_one/features/home/contract/home_contract.dart';
import 'package:tasks_flutter_one/features/home/presenter/home_presenter.dart';

import '../../../design-ui/components/add_task_component.dart';

class HomeScreenPage extends BaseWidgetView {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  BaseState<BaseWidgetView> createState() => _HomeScreenPageStateState();
}

class _HomeScreenPageStateState extends BaseState<HomeScreenPage> implements HomeView {

  HomePresenterImpl? _homePresenterImpl;

  @override
  void onViewCreated() {
    _homePresenterImpl = HomePresenterImpl(this);
    super.onViewCreated();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: const Color(ColorResource.BLUE_BABY_SKY),
        appBar: AppBar(
          title: const Text("Tarefas"),
          backgroundColor: const Color(ColorResource.BLUE_COLOR_SPLASH_SCREEN),
          automaticallyImplyLeading: false,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AddTaskHeaderComponent(onCLick: () {
                print("click called");
                _homePresenterImpl?.onCLickAddTask();
              }),
            ]),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }

  @override
  void sendCallNavigateHome() {
    _homePresenterImpl?.navigateToHomeAddTaskScreen(context);
  }

  @override
  showError(String message) {
    // TODO: implement showError
    throw UnimplementedError();
  }

  @override
  showOrHideLoading(bool flag) {

  }

  @override
  showMessage(String message) {

  }

  @override
  popPage() {

  }
}
