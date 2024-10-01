import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Models/ArticalModel.dart';
import 'package:news_app_ui_setup/Services/NewsWebView.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articalmodel});
  final Articalmodel articalmodel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewApp(
                model: articalmodel,
              ),
            ));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image(
                image: NetworkImage(articalmodel.image!),
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return const Center(
                    child:
                        Text('Image failed to load'), // Corrected parentheses
                  );
                },
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
          ),
          Text(
            articalmodel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            articalmodel.subtitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
