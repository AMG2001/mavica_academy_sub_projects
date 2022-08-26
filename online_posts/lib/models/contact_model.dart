import 'package:firebase_database/firebase_database.dart';

class Contact {
  late String _id;
  late String _firstName;
  late String _lastName;
  late String _phone;
  late String _email;
  late String _address;
  late String _photoUrl;
  /**
   * Constructor to add contact on firebase .
   */
  Contact(this._firstName, this._lastName, this._phone, this._email,
      this._address, this._photoUrl);
  /**
   * Constructor to efit contact
   */

  Contact.withId(this._id, this._firstName, this._lastName, this._phone,
      this._email, this._address, this._photoUrl);

  /**
   * Getters
   */
  get firstName => this._firstName;
  get lastName => this._lastName;
  get phone => this._phone;
  get email => this._email;
  get address => this._address;
  get photoUrl => this._photoUrl;

/**
 * Setters
 */
  set firstName(value) => this._firstName = value;

  set lastName(value) => this._lastName = value;

  set phone(value) => this._phone = value;

  set email(value) => this._email = value;

  set address(value) => this._address = value;

  set photoUrl(value) => this._photoUrl = value;

  /**
   * Now let's implement method that take snap shot and convert it to Contact Obj ->
   */

  Contact.fromSnapshot(DataSnapshot snapshot) {
    final contactData = snapshot.value as Map<String, dynamic>;
    this._id = snapshot.key!;
    this._firstName = contactData['firstName'];
    this._lastName = contactData['lastName'];
    this._phone = contactData['phone'];
    this._email = contactData['email'];
    this._address = contactData['address'];
    this._photoUrl = contactData['photoUrl'];
  }

/**
 * To convert Object of Contact to json
 */
  Map<String, dynamic> toJson() {
    return {
      'firstName': this._firstName,
      'lastName': this._lastName,
      'phone': this._phone,
      'email': this._email,
      'address': this._address,
      'photoUrl': this._photoUrl,
    };
  }
}
