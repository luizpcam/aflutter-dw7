import 'package:flutter/material.dart';
import 'package:job_timer/app/core/ui/job_timer_icons_icons.dart';
import 'package:job_timer/app/modules/project/detail/controller/project_detail_controller.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_detail_appbar.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_piechart.dart';
import 'package:job_timer/app/modules/project/detail/widgets/project_task_tile.dart';

class ProjectDetailPage extends StatelessWidget {
  final ProjectDetailController controller;

  const ProjectDetailPage({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          ProjectDetailAppbar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
                  child: ProjectPiechart(),
                ),
                ProjectTaskTile(),
                ProjectTaskTile(),
                ProjectTaskTile(),
                ProjectTaskTile(),
                ProjectTaskTile(),
                ProjectTaskTile(),
                ProjectTaskTile(),
                ProjectTaskTile(),
                ProjectTaskTile(),
                ProjectTaskTile(),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton.icon(
                  onPressed: () => {},
                  icon: const Icon(JobTimerIcons.ok_circled2),
                  label: const Text("Finalizar Projeto"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
