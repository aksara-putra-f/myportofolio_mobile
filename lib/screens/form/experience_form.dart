import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';

class ExperienceFormPage extends StatefulWidget {
  const ExperienceFormPage({super.key});

  @override
  State<ExperienceFormPage> createState() => _ExperienceFormPageState();
}

class _ExperienceFormPageState extends State<ExperienceFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _experienceTitle = "";
  String _place = "";
  String _description = "";
  String _responsibilities = "";
  String _experienceCategory = "Full-Time";
  String _dateStart = "";
  String _dateEnd = "";

  final List<String> _categories = [
    'Internship',
    'Research',
    'Volunteer',
    'Part-Time',
    'Full-Time',
    'Freelance',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Data Pengalaman',
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
              // ===== Field Title Experience =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Jabatan/Posisi",
                    labelText: "Jabatan/Posisi",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _experienceTitle = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Experience title tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),

              // ===== Field Tempat Experience =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Tempat",
                    labelText: "Tempat",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _place = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Tempat tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),

              // ===== Field Deskripsi Experience =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi Experience",
                    labelText: "Deskripsi Experience",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),  

              // ===== Field Pekerjaan Experience =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Detail Pekerjaan/Tanggung Jawab",
                    labelText: "Detail Pekerjaan/Tanggung Jawab",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _responsibilities = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Detail pekerjaan/tanggung jawab tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),  

              // ===== Field Kategori Experience =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Kategori Experience",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  initialValue: _experienceCategory,
                  items: _categories
                          .map((category) => DropdownMenuItem(
                            value: category,
                            child: Text(category)
                            )
                          ).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _experienceCategory = value!;
                    });
                  },
                ),
              ),
              
              // ===== Field Tanggal Mulai Experience =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Tanggal Mulai",
                    labelText: "Tanggal Mulai",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _dateStart = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Tanggal mulai tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),

              // ===== Field Tanggal Mulai Experience =====
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Tanggal Selesai",
                    labelText: "Tanggal Selesai",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _dateEnd = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Tanggal selesai tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),

              Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
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
                              title: const Text("Data Pengalaman Berhasil Ditambahkan!"),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text("Title Pengalaman: $_experienceTitle"),
                                    Text("Tempat Pengalaman: $_place"),
                                    Text("Deskripsi: $_description"),
                                    Text("Detail Tanggung Jawab/Pekerjaan: $_responsibilities"),
                                    Text("Kategori Pengalaman: $_experienceCategory"),
                                    Text("Tanggal Mulai: $_dateStart"),
                                    Text("Tanggal Selesai: $_dateEnd"),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                  }, 
                                  child: Text("Ok"),
                                )
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}