// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movies {
  Movies({
    required this.createdBy,
    required this.description,
    required this.favoriteCount,
    required this.id,
    required this.movieList,
    required this.itemCount,
    required this.iso_639_1,
    required this.name,
    required this.posterPath,
  });
  late final String createdBy;
  late final String description;
  late final int favoriteCount;
  late final String id;
  late final List<Movie> movieList;
  late final int itemCount;
  late final String iso_639_1;
  late final String name;
  late final String posterPath;

  Movies.fromJson(Map<String, dynamic> json) {
    createdBy = json['created_by'];
    description = json['description'];
    favoriteCount = json['favorite_count'];
    id = json['id'];
    movieList = List.from(json['items']).map((e) => Movie.fromJson(e)).toList();
    itemCount = json['item_count'];
    iso_639_1 = json['iso_639_1'];
    name = json['name'];
    posterPath = json['poster_path'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['created_by'] = createdBy;
    _data['description'] = description;
    _data['favorite_count'] = favoriteCount;
    _data['id'] = id;
    _data['items'] = movieList.map((e) => e.toJson()).toList();
    _data['item_count'] = itemCount;
    _data['iso_639_1'] = iso_639_1;
    _data['name'] = name;
    _data['poster_path'] = posterPath;
    return _data;
  }

  @override
  String toString() {
    return 'Movies(createdBy: $createdBy, description: $description, favoriteCount: $favoriteCount, id: $id, movieList: $movieList, itemCount: $itemCount, iso_639_1: $iso_639_1, name: $name, posterPath: $posterPath)';
  }

  @override
  bool operator ==(covariant Movies other) {
    if (identical(this, other)) return true;

    return other.createdBy == createdBy &&
        other.description == description &&
        other.favoriteCount == favoriteCount &&
        other.id == id &&
        other.movieList == movieList &&
        other.itemCount == itemCount &&
        other.iso_639_1 == iso_639_1 &&
        other.name == name &&
        other.posterPath == posterPath;
  }

  @override
  int get hashCode {
    return createdBy.hashCode ^
    description.hashCode ^
    favoriteCount.hashCode ^
    id.hashCode ^
    movieList.hashCode ^
    itemCount.hashCode ^
    iso_639_1.hashCode ^
    name.hashCode ^
    posterPath.hashCode;
  }

  Movies copyWith({
    String? createdBy,
    String? description,
    int? favoriteCount,
    String? id,
    List<Movie>? movieList,
    int? itemCount,
    String? iso_639_1,
    String? name,
    String? posterPath,
  }) {
    return Movies(
      createdBy: createdBy ?? this.createdBy,
      description: description ?? this.description,
      favoriteCount: favoriteCount ?? this.favoriteCount,
      id: id ?? this.id,
      movieList: movieList ?? this.movieList,
      itemCount: itemCount ?? this.itemCount,
      iso_639_1: iso_639_1 ?? this.iso_639_1,
      name: name ?? this.name,
      posterPath: posterPath ?? this.posterPath,
    );
  }
}

class Movie {
  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
  late final bool adult;
  late final String backdropPath;
  late final List<int> genreIds;
  late final int id;
  late final String mediaType;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final double popularity;
  late final String posterPath;
  late final String releaseDate;
  late final String title;
  late final bool video;
  late final num voteAverage;
  late final int voteCount;

  Movie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    _data['backdrop_path'] = backdropPath;
    _data['genre_ids'] = genreIds;
    _data['id'] = id;
    _data['media_type'] = mediaType;
    _data['original_language'] = originalLanguage;
    _data['original_title'] = originalTitle;
    _data['overview'] = overview;
    _data['popularity'] = popularity;
    _data['poster_path'] = posterPath;
    _data['release_date'] = releaseDate;
    _data['title'] = title;
    _data['video'] = video;
    _data['vote_average'] = voteAverage;
    _data['vote_count'] = voteCount;
    return _data;
  }

  @override
  String toString() {
    return 'Movie(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, mediaType: $mediaType, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(covariant Movie other) {
    if (identical(this, other)) return true;

    return other.adult == adult &&
        other.backdropPath == backdropPath &&
        other.genreIds == genreIds &&
        other.id == id &&
        other.mediaType == mediaType &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        other.overview == overview &&
        other.popularity == popularity &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.title == title &&
        other.video == video &&
        other.voteAverage == voteAverage &&
        other.voteCount == voteCount;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
    backdropPath.hashCode ^
    genreIds.hashCode ^
    id.hashCode ^
    mediaType.hashCode ^
    originalLanguage.hashCode ^
    originalTitle.hashCode ^
    overview.hashCode ^
    popularity.hashCode ^
    posterPath.hashCode ^
    releaseDate.hashCode ^
    title.hashCode ^
    video.hashCode ^
    voteAverage.hashCode ^
    voteCount.hashCode;
  }

  Movie copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? mediaType,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    num? voteAverage,
    int? voteCount,
  }) {
    return Movie(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      mediaType: mediaType ?? this.mediaType,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }
}
