import 'package:dartz/dartz.dart';
import 'package:movies_app/data/data_sources/movie_remote_data_source.dart';
import 'package:movies_app/data/models/movie_model.dart';
import 'package:movies_app/domain/entities/app_error.dart';
import 'package:movies_app/domain/entities/movie_entity.dart';
import 'package:movies_app/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl extends MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  MovieRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppError, List<MovieModel>>> getTrending() async {
    try {
      final movie = await remoteDataSource.getTrending();
      return Right(movie);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getComingSoon() async {
    try {
      final movie = await remoteDataSource.getComingSoon();
      return Right(movie);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPlayingNow() async {
    try {
      final movie = await remoteDataSource.getPlayingNow();
      return Right(movie);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }

  @override
  Future<Either<AppError, List<MovieEntity>>> getPopular() async {
    try {
      final movie = await remoteDataSource.getPopular();
      return Right(movie);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }

  Future<Either<AppError, List<MovieEntity>>> getTopRated() async {
    try {
      final movie = await remoteDataSource.getTopRated();
      return Right(movie);
    } on Exception {
      return Left(AppError('Something went wrong!'));
    }
  }
}
