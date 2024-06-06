import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../extensions/extensions.dart';
import '../five_image/five_image.dart';

class SecondScreen extends ConsumerWidget {
  SecondScreen({super.key});

  String imageUrl = '';

  late WidgetRef _ref;

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _ref = ref;

    final imagePathList =
        ref.watch(fiveImageProvider.select((value) => value.imagePathList));

    Future(uploadImageToFirebase);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration:
                  BoxDecoration(color: Colors.yellowAccent.withOpacity(0.2)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: imagePathList.map((e) {
                    return (e['value'] == null)
                        ? Container()
                        : GestureDetector(
                            onTap: () {
                              ref
                                  .read(fiveImageProvider.notifier)
                                  .removeImage(number: e['number']!.toInt());
                            },
                            child: Container(
                              width: 100,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Image.file(File(e['value']!)),
                            ),
                          );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  Future<void> uploadImageToFirebase() async {
    final firebaseStorageRef = FirebaseStorage.instance.ref();
    final firebaseStorageDir = firebaseStorageRef.child('toyoda/hideyuki');

    final imagePathList =
        _ref.watch(fiveImageProvider.select((value) => value.imagePathList));

    print('aaaaaaaa');

    for (var i = 0; i < imagePathList.length; i++) {
      final firebaseStorageFilePath = firebaseStorageDir.child(
          '${DateTime.now().toString().replaceAll(' ', '-')}_${i + 1}');

      if (imagePathList[i]['value'] != null) {
        try {
          await firebaseStorageFilePath
              .putFile(File(imagePathList[i]['value']!));

          imageUrl = await firebaseStorageFilePath.getDownloadURL();

          print(imageUrl);
          print('-----');
        } catch (_) {
          return;
        }
      }
    }

    print('aaaaaaaa');
  }
}
