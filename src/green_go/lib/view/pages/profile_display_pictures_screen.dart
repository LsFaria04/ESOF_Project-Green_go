import 'dart:io';
import 'package:flutter/material.dart';
import 'package:green_go/view/constants.dart';
import 'package:green_go/view/pages/profile_page.dart';
import 'package:green_go/view/pages/profile_take_picture_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:green_go/controller/database/database_users.dart';
import '../../controller/authentication/auth.dart';
import 'package:green_go/controller/database/cloud_storage.dart';

class ProfileDisplayPictureScreen extends StatefulWidget {
  final String imagePath;
  final AuthService auth = AuthService();
  final DataBaseUsers dataBaseUsers = DataBaseUsers();
  ProfileDisplayPictureScreen({super.key, required this.imagePath});
  final CloudStorage cloudStorage = CloudStorage();

  @override
  State<ProfileDisplayPictureScreen> createState() => _ProfileDisplayPictureScreenState();
}

class _ProfileDisplayPictureScreenState extends State<ProfileDisplayPictureScreen> {
  final FirebaseStorage storage = FirebaseStorage.instance;

  DataBaseUsers dataBaseUsers = DataBaseUsers();

  AuthService auth = AuthService();

  Future<String> uploadImageToFirebaseStorage(String imagePath) async {
    File imageFile = File(imagePath);
    String newImagePath = 'profile_pictures/${DateTime.now()}.jpg';
    Reference ref = storage.ref().child(newImagePath);
    UploadTask uploadTask = ref.putFile(imageFile);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
    String downloadUrl = await taskSnapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  Widget buildTitle(BuildContext context){
    return const Padding(
        padding: EdgeInsets.all(35),
        child: Text(
            "Image preview",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600
            )
        )
    );
  }

  Widget buildImageContainer(BuildContext context) {
    double circleOverlaySize = MediaQuery.of(context).size.width * 0.7;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          // Container containing the image
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 5)),
              color: lightGray,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.file(
                File(widget.imagePath),
                height: 400,
              ),
            ),
          ),
        ),
        // Circular overlay in the middle
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: circleOverlaySize,
              height: circleOverlaySize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget tryAgainButton(BuildContext context){
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(lightGray),
            minimumSize: MaterialStatePropertyAll(Size(150,50))
        ),
        onPressed:
            (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileTakePictureScreen(),
            ),
          );
        }, child: const Text(
      "Try again",
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600
      ),
    )
    );
  }

  Widget sendImageButton(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(lightGray),
        minimumSize: MaterialStateProperty.all(const Size(150, 50)),
      ),
      onPressed: () async {
        String imageUrl = await uploadImageToFirebaseStorage(widget.imagePath);
        dataBaseUsers.updateUserPicture(auth.getCurrentUser()!.uid,imageUrl);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfilePage()),);
      },
      child: const Text(
        "Send Image",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildTitle(context),
          buildImageContainer(context),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: tryAgainButton(context),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: sendImageButton(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
