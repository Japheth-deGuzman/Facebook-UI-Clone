import 'package:facebook_clone_ui/models/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: 95,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                height: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(19),
                  ),
                  child: Image.network(
                    'https://images.genius.com/489894ddabb4c6bd5ca9876eb6683879.1000x1000x1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.bottomCenter,
                child: const Text(
                  'Share music you love',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: 95,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 110,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(19.0),
                    topRight: Radius.circular(19.0),
                  ),
                  child: Image.network(
                    Data.currentUser.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      const SizedBox(
                        height: 85.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3.0),
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: const Icon(
                          MdiIcons.plus,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Expanded(child: Container()),
                      const Text(
                        'Creat story',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
