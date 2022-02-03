// import 'package:flutter/material.dart';

// class _TextSubmitWidgetState extends State<TextSubmitForm> {
//   // declare a GlobalKey
//   final _formKey = GlobalKey<FormState>();
//   // declare a variable to keep track of the input text
//   String _name = '';

//   void _submit() {
//     // validate all the form fields
//     if (_formKey.currentState!.validate()) {
//       // on success, notify the parent widget
//       widget.onSubmit(_name);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // build a Form widget using the _formKey created above.
//     return Form(
//       key: _formKey,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           TextFormField(
//             decoration: const InputDecoration(
//               labelText: 'Enter your name',
//             ),
//             // use the validator to return an error string (or null) based on the input text
//             validator: (text) {
//               if (text == null || text.isEmpty) {
//                 return 'Can\'t be empty';
//               }
//               if (text.length < 4) {
//                 return 'Too short';
//               }
//               return null;
//             },
//             // update the state variable when the text changes
//             onChanged: (text) => setState(() => _name = text),
//           ),
//           ElevatedButton(
//             // only enable the button if the text is not empty
//             onPressed: _name.isNotEmpty ? _submit : null,
//             child: Text(
//               'Submit',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
