import 'dart:html';
import 'package:reactive_file_picker/reactive_file_picker.dart';
import 'package:usip_task1/screens/edit_info_page.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:usip_task1/services/user_input_values.dart';
import 'package:open_file/open_file.dart';
import 'package:usip_task1/services/past_experience.dart';

class UserInfoEdit extends StatefulWidget {
  const UserInfoEdit({Key? key}) : super(key: key);

  @override
  _UserInfoEditState createState() => _UserInfoEditState();
}

class _UserInfoEditState extends State<UserInfoEdit> {

  // final Skills = [];
  final form = FormGroup(
      {
        'TagLine' : FormControl<String>(validators: [Validators.required]),
        'Location': FormControl<String>(validators: [Validators.required]),
        'About': FormControl<String>(validators: [Validators.required]),
        'Past_Experience': FormArray([]),
        // 'Skills':FormArray<dynamic>([]),
        'Image':FormControl<String>(),
      }
  );
  // FormArray<dynamic> get SkillsList => form.contains('Skills') as FormArray;
  FormArray get Past_Experience_List => form.control('Past_Experience') as FormArray;
  @override
  void initState()
  {
    // SkillsList.addAll(Skills.map((skill) => FormControl<dynamic>(value: '')).toList());

    Past_Experience_List.add(FormGroup(
      { 'Organisation': FormControl<String>(value: ''),
        'Position':FormControl<String>(value: ''),
        'TypeName': FormControl<String>(value: ''),
        'Tenure': FormControl<String>(value: ''),
      }
    ));
    super.initState();
  }

  addFormArray() async
  {
    Past_Experience_List.add(FormGroup({
      'Organisation': FormControl<String>(value: ''),
      'Position':FormControl<String>(value: ''),
      'TypeName': FormControl<String>(value: ''),
      'Tenure': FormControl<String>(value: ''),
    }));
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ReactiveForm(
              formGroup:form, child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
            children: <Widget>[
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Text('Update Your Details' , style: TextStyle(fontSize: 28 , color: Colors.black),),
              ),
                ReactiveTextField(
                  formControlName: 'TagLine',
                  decoration: const InputDecoration(
                    labelText: 'TagLine',
                    focusColor: Colors.grey,
                  ),
                ),
                ReactiveTextField(
                  formControlName: 'Location',
                  decoration:const InputDecoration(
                    labelText: 'Location',
                    focusColor: Colors.grey,
                  ),
                ),
                ReactiveTextField(
                  formControlName: 'About',
                  decoration:const InputDecoration(
                    labelText: 'About',
                    focusColor: Colors.grey,
                  ),
                ),
                ReactiveFormArray(
                  formArrayName: 'Past_Experience',
                  builder: (context , formArray, child)
                  {
                    final experience_list = Past_Experience_List.controls.map((control) => control as FormGroup).map((currentform)
                    {
                      return ReactiveForm(formGroup: currentform, child: Column(
                        children: <Widget>[
                          ReactiveTextField(
                            formControlName: 'Organisation',
                            decoration:const InputDecoration(
                              labelText: 'Organisation',
                            ),
                          ),
                          ReactiveTextField(
                            formControlName: 'Position',
                            decoration:const InputDecoration(
                              labelText: 'Position',
                            ),
                          ),
                          ReactiveTextField(
                            formControlName: 'TypeName',
                            decoration:const InputDecoration(
                              labelText: 'TypeName',
                            ),
                          ),
                          ReactiveTextField(
                            formControlName: 'Tenure',
                            decoration:const InputDecoration(
                              labelText: 'Tenure',
                            ),
                          ),
                          Container(
                            constraints: const BoxConstraints(maxWidth: 400),
                            alignment: Alignment.center,
                            child: ElevatedButton(
                              onPressed: () => addFormArray,
                              child: const Text('Add more'),
                            ),
                          ),
                        ],
                      ));
                    });
                    return Wrap(
                      runSpacing: 20,
                      children:experience_list.toList(),
                    );
                  }),
                const Padding(
                  padding:  EdgeInsets.all(20.0),
                  child:  Text('Update Your Image' , style: TextStyle(fontSize: 20 , color: Colors.black),),
                ),
              // ReactiveFilePicker(
              //   withData: true,
              //   formControlName: 'Image',
              //   type: FileType.image,
              //  // decoration: GenieGigFormLayouts().textFieldDecoration(hintText: "", labelText: ''),
              //   filePickerBuilder: (pickImage, files, onChange) {
              //     return InkWell(
              //       onTap: pickImage,
              //       child: Padding(
              //         padding: const EdgeInsets.all(15.0),
              //         child: AspectRatio(
              //           aspectRatio: 1 / 1,
              //           child: Container(
              //             color: Colors.transparent,
              //             child: (files.platformFiles.isEmpty)
              //                 ? Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: const [
              //                 Icon(Icons.upload_file),
              //                 Text("Upload"),
              //               ],
              //             )
              //                 : Image.memory(files.platformFiles[0].bytes!),
              //           ),
              //         ),
              //       ),
              //     );
              //   },
              // ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton( style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white
                  ),
                  onPressed: () {
                    location = form.control('Location').value;
                    print(form.value);
                    setState(() {
                    });
                    Navigator.pop(context);
                  }, child: const Text('Save')
                  ),
                )
            ],
          ),
              )),
    );
  }
}
