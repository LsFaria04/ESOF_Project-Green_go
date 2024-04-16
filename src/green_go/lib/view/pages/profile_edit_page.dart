import 'package:flutter/material.dart';
import 'package:green_go/view/pages/profile_page.dart';
import 'package:green_go/controller/authentication/auth.dart';
import 'package:green_go/controller/database/database_users.dart';
import '../../controller/fetchers/user_fetcher.dart';
import '../../model/user_model.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<StatefulWidget> createState() => EditPageViewer();
}

class EditPageViewer extends State<EditPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  DateTime birthDate = DateTime(DateTime.now().year - 18);

  DataBaseUsers dataBaseUsers = DataBaseUsers();
  AuthService auth = AuthService();

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  void fetchUserData() async {
    // Fetch current user data
    UserModel userData = await UserFetcher().getCurrentUserData();

    // Autofill the fields with user data
    setState(() {
      usernameController.text = userData.username;
      nationalityController.text = userData.nationality;
      jobController.text = userData.job;
      birthDate = userData.birthDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                }, 
                icon: const Icon(Icons.arrow_back)),
                const Padding(
                  padding: EdgeInsets.only(left:65),
                  child :  Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                )
              ],
            ),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.2,
              //backgroundImage: NetworkImage(photoUrl!),
            ),
            
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child:  Align(
                alignment: Alignment.topLeft,
                child:  Text(
                  "Name:",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),

            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child:  Align(
                alignment: Alignment.topLeft,
                child:  Text(
                  "Nationality:",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: nationalityController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child:  Align(
                alignment: Alignment.topLeft,
                child:  Text(
                  "Job:",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: jobController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child:  Align(
                alignment: Alignment.topLeft,
                child:  Text(
                  "Date of birth:",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            
            TextField(
              readOnly: true,
              controller: TextEditingController(text: birthDate.toString().split(' ')[0]),
              decoration:  InputDecoration(
                
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: birthDate,
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );

                if (pickedDate != null && pickedDate != birthDate) {
                  setState(() {
                    birthDate = pickedDate;
                  });
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: ElevatedButton(
                onPressed: () {
                  // Save changes to the database
                  String newName = usernameController.text.trim();
                  String newNationality = nationalityController.text.trim();
                  String newJob = jobController.text.trim();
                  dataBaseUsers.updateUserProfile(
                    auth.getCurrentUser()!.uid,
                    newName,
                    newNationality,
                    newJob,
                    birthDate,
                  );
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                },
                child: const Text('Save Changes'),
              )
            )
          ],
        ),
      ),
    );
  }
}
