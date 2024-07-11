import 'package:filmguru/data/model/movie_item.dart';
import 'package:filmguru/theme/app_colors.dart';
import 'package:filmguru/theme/app_dimensions.dart';
import 'package:filmguru/theme/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieItemRow extends StatelessWidget {
  const MovieItemRow(this._movie, {super.key});

  final MovieItem _movie;

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) => SizedBox(
        height: AppDimensions.movieListItemPosterHeight,
        child: Stack(
          children: <Widget>[
            _poster(),
            _title(context),
          ],
        ),
      );

  Image _poster() => Image.network(
        _movie.poster,
        fit: BoxFit.fitWidth,
        width: double.infinity,
      );

  Align _title(BuildContext context) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: AppColors.transparentBlack,
          padding: const EdgeInsets.all(AppDimensions.spacingNormal),
          child: Row(
            children: [
              Text(
                _movie.title,
                style: AppTextStyles.title().copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      );
}
