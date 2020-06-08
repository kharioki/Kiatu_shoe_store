import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kiatu_store/core/const.dart';
import 'package:kiatu_store/core/flutter_icons.dart';
import 'package:kiatu_store/models/shoe_model.dart';
import 'package:kiatu_store/widgets/app_clipper.dart';

class DetailPage extends StatefulWidget {
  final ShoeModel shoeModel;

  const DetailPage(this.shoeModel);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.shoeModel.color,
      appBar: AppBar(
        backgroundColor: widget.shoeModel.color,
        elevation: 0.0,
        title: Text(
          'CATEGORIES',
        ),
        leading: Icon(
          FlutterIcons.left_open_1,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * .8,
                width: MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: AppClipper(cornerSize: 50, diagonalHeight: 180),
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 180, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 300,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            '${widget.shoeModel.name}',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        _buildRating(),
                        SizedBox(height: 24),
                        Text(
                          'DETAILS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          '${widget.shoeModel.desc}',
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          'COLOR OPTIONS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: AppColors.blueColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: <Widget>[
        RatingBar(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 20,
          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(width: 16),
        Text(
          '234 Reviews',
          style: TextStyle(
            color: Colors.black26,
          ),
        ),
      ],
    );
  }
}
