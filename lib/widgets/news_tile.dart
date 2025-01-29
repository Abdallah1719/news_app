import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (articalModel.image != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articalModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                );
              },
              // loadingBuilder: (context, child, loadingProgress) {
              //   return SizedBox(
              //     height: 200,
              //     child: Center(
              //       child: CircularProgressIndicator(),
              //     ),
              //   );
              // },
            ),
          ),
        SizedBox(height: 12),
        Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 12),
        Text(
          articalModel.subtitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
