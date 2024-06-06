import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../extensions/extensions.dart';

part 'five_image.freezed.dart';

part 'five_image.g.dart';

///
@freezed
class FiveImageState with _$FiveImageState {
  const factory FiveImageState({
    @Default([]) List<Map<String, String>> imagePathList,
  }) = _FiveImageState;
}

///
@riverpod
class FiveImage extends _$FiveImage {
  ///
  @override
  FiveImageState build() {
    return const FiveImageState();
  }

  ///
  void setImage({required String imagePath}) {
    final imagePathList = [...state.imagePathList];
    imagePathList.add(
      {
        'number': imagePathList.length.toString(),
        'value': imagePath,
      },
    );
    state = state.copyWith(imagePathList: imagePathList);
  }

  ///
  void removeImage({required int number}) {
    final imagePathList = [...state.imagePathList]..removeAt(number);

    final list = <Map<String, String>>[];
    for (var i = 0; i < imagePathList.length; i++) {
      list.add(
        {
          'number': i.toString(),
          'value': imagePathList[i]['value'] ?? '',
        },
      );
    }

    state = state.copyWith(imagePathList: list);
  }
}

///
class FiveImageScreen extends ConsumerWidget {
  const FiveImageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imagePicker = ImagePicker();

    final imagePathList =
        ref.watch(fiveImageProvider.select((value) => value.imagePathList));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(imagePathList.length.toString()),
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
            ElevatedButton(
              onPressed: () async {
                final imageFilePath =
                    await imagePicker.pickImage(source: ImageSource.gallery);

                if (imageFilePath != null) {
                  ref
                      .read(fiveImageProvider.notifier)
                      .setImage(imagePath: imageFilePath.path);
                }
              },
              child: const Text('add'),
            ),
          ],
        ),
      ),
    );
  }
}
