part of 'project_detail_controller';

enum ProjectDetailStatus { initial, loading, complete, failure }

class ProjectDetailState {
  final ProjectDetailStatus status;
  final ProjectModel projectModel;

  ProjectDetailState._({required this.status, required this.projectModel});
}
