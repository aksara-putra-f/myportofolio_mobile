import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';

class SkillFormPage extends StatefulWidget {
  const SkillFormPage({super.key});

  @override
  State<SkillFormPage> createState() => _SkillFormPageState(); 
}

class _SkillFormPageState extends State<SkillFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _skillName = "";
  String _shortDescription = "";
  String _skillCategory = "Hardskill";

  final List<String> _categories = [
    "Hardskill",
    "Softskill"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Add Education Form',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              // ===== Field Nama Skill =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama dari Skill",
                    labelText: "Nama Skill",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _skillName = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Nama skill tidak boleh kosong";
                    }
                    return null;
                  },
                ),
              ),

              // ===== Field Deskripsi Skill =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi singkat Skill",
                    labelText: "Deskripsi Singkat",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _shortDescription = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Deskripsi singkat tidak boleh kosong";
                    }
                    return null;
                  },
                ),
              ),

              // ===== Field Kategori Skill =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Kategori Skill",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  initialValue: _skillCategory,
                  items: _categories
                          .map((category) => DropdownMenuItem(
                            value: category,
                            child: Text(category)
                            )
                          ).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _skillCategory = value!;
                    });
                  },
                ),
              ),

              // ===== Tombol Submit =====
              Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.indigo)
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Data Skill Berhasil Ditambahkan!"),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text("Nama skill: $_skillName"),
                                  Text("Deskripsi: $_shortDescription"),
                                  Text("Kategori Skill: $_skillCategory"),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _formKey.currentState!.reset();
                                },
                                child: Text("Ok"))
                            ],
                          );
                        }
                      );
                    }
                  }, 
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}