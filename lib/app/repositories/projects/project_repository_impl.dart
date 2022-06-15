import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:job_timer/app/core/database/database.dart';
import 'package:job_timer/app/core/exceptions/failure.dart';
import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/entities/project_status.dart';

import './project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final Database database;

  ProjectRepositoryImpl({required this.database});

  @override
  Future<void> register(Project project) async {
    try {
      final connection = await database.openConnection();
      connection.writeTxn(
        (isar) => isar.projects.put(project),
      );
    } on IsarError catch (e, s) {
      log("Erro ao cadastrar o projeto", error: e, stackTrace: s);
      throw FailureException(message: "Erro ao cadastrar o projeto");
    }
  }

  @override
  Future<List<Project>> findByStatus(ProjectStatus status) async {
    try {
      final connection = await database.openConnection();
      final projects = connection.projects.filter().statusEqualTo(status);
      return projects.findAll();
    } on IsarError catch (e, s) {
      log("Erro ao recuperar lista de projetos", error: e, stackTrace: s);
      throw FailureException(message: "Erro ao recuperar lista de projetos");
    }
  }
}
