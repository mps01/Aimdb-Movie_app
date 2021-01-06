class AllResultModels {
  int page;
  List<Results> results;
  int totalPages;
  int totalResults;

  AllResultModels(
      {this.page, this.results, this.totalPages, this.totalResults});

  AllResultModels.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = this.totalPages;
    data['total_results'] = this.totalResults;
    return data;
  }
}

class Results {
  bool video;
  double voteAverage;
  String overview;
  String releaseDate;
  int voteCount;
  bool adult;
  String backdropPath;
  String title;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String posterPath;
  double popularity;
  String mediaType;
  String name;
  String originalName;
  String firstAirDate;
  List<String> originCountry;

  Results(
      {this.video,
      this.voteAverage,
      this.overview,
      this.releaseDate,
      this.voteCount,
      this.adult,
      this.backdropPath,
      this.title,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.posterPath,
      this.popularity,
      this.mediaType,
      this.name,
      this.originalName,
      this.firstAirDate,
      this.originCountry});

  Results.fromJson(Map<String, dynamic> json) {
    video = json['video'];
    voteAverage = json['vote_average'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    voteCount = json['vote_count'];
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    title = json['title'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    posterPath = json['poster_path'];
    popularity = json['popularity'];
    mediaType = json['media_type'];
    name = json['name'];
    originalName = json['original_name'];
    firstAirDate = json['first_air_date'];
    originCountry = json['origin_country'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['vote_count'] = this.voteCount;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['title'] = this.title;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    data['name'] = this.name;
    data['original_name'] = this.originalName;
    data['first_air_date'] = this.firstAirDate;
    data['origin_country'] = this.originCountry;
    return data;
  }
}
