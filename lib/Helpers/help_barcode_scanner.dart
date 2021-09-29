

////////////////////////////////////////////////////////////////////////////////

// bool _validateCompleteForm() {
//   if (selectedMission!.isEmpty) {
//     print('Please select the mission');
//     return false;
//   } else if (_missionMissionaryCont.text.isEmpty) {
//     print('Mission cannot be empty');
//     _missionMissionary.requestFocus();
//     return false;
//   } else if (_missionBudgetCont.text.isEmpty) {
//     print("Budget cannot be empty");
//     _missionBudget.requestFocus();
//     return false;
//   } else if (_charityNameCont.text.isEmpty) {
//     print("Enter Charity Name");
//     _charityName.requestFocus();
//     return false;
//   } else if (_emailCont.text.isEmpty || !_validateEmail(_emailCont.text)) {
//     print('Write a valid Email address');
//     _email.requestFocus();
//     return false;
//   } else if (_passwordCont.text.isEmpty) {
//     print('Password cannot be empty');
//     _password.requestFocus();
//     return false;
//   } else if (_repeatPasswordCont.text.isEmpty) {
//     print('Repeat Password');
//     _repeatPassword.requestFocus();
//     return false;
//   }
//
//   if (_passwordCont.text != _repeatPasswordCont.text) {
//     print("Password does not match");
//     _repeatPassword.requestFocus();
//     return false;
//   } else if (_firstNameCont.text.isEmpty) {
//     print('Enter first name');
//     _firstName.requestFocus();
//     return false;
//   } else if (_lastNameCont.text.isEmpty) {
//     print('Enter last name');
//     _lastName.requestFocus();
//     return false;
//   } else if (_phoneCont.text.isEmpty || _phoneCont.text.length < 9) {
//     print('Write a valid Phone');
//     _phone.requestFocus();
//     return false;
//   } else if (doYouHoldAnyOfTheseTitle!.isEmpty) {
//     print("Do you hold any of these titles is required");
//     return false;
//   } else if (whatIsYourDayJob!.isEmpty) {
//     print('Your day job is required');
//     return false;
//   } else if (howOftenDoYouMissionMinistry!.isEmpty) {
//     print("How often do you do missions or ministry is required");
//     return false;
//   } else if (_employerIdentificationCont.text.isEmpty) {
//     print("Employer Identification cannot be empty");
//     _employerIdentification.requestFocus();
//     return false;
//   } else {
//     return true;
//   }
// }

//////////////////////////////////////////////////

// TextEditingController _firstNameCont = TextEditingController();
// TextEditingController _lastNameCont = TextEditingController();
// TextEditingController _phoneCont = TextEditingController();
// FocusNode _missionMissionary = FocusNode();
// FocusNode _missionBudget = FocusNode();
// FocusNode _charityName = FocusNode();

///////////////////////////////

// TextButton(
// child: Text("SignUp"),
// onPressed: () async {
// // checkEmailAlreadyExists(_emailCont.text);
// bool validateResult = await _validateCompleteForm();
//
// }),

////////////////  --->>>>> Drop Down/////////////////////////

// DropdownButtonHideUnderline(
// child: DropdownButton<String>(
// icon: Icon(
// Icons.keyboard_arrow_down,
// size: 20.0,
// ),
// isExpanded: true,
// hint: Text(
// selectedMission!,
// maxLines: 1,
// overflow: TextOverflow.ellipsis,
// // style: TextStyle(),
// ),
// items: missionList.missionTypesList!
// .map((Data? val) {
// return DropdownMenuItem<String>(
// value: val!.description,
// onTap: () {
// selectedMission = val.description;
// setState(() {});
// },
// child: new Text(
// val.description.toString(),
// ),
// );
// }).toList(),
// onChanged: (_) {},
// ),
// ),

////////////////

/////////Drop down Strings ///////////////

// String? selectedMission = '';
// String? doYouHoldAnyOfTheseTitle = '';
// String? whatIsYourDayJob = '';
