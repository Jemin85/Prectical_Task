import 'package:flutter/material.dart';

class ResumeShowScreen extends StatefulWidget {
  const ResumeShowScreen({super.key});

  @override
  State<ResumeShowScreen> createState() => _ResumeShowScreenState();
}

class _ResumeShowScreenState extends State<ResumeShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Text(
                      "title",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                          border:
                              Border(left: BorderSide(color: Colors.black))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Jemin Sukhadiya",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Jemin Sukhadiya",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Jemin Sukhadiya",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              const Text(
                "Career Objective",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  5,
                  (index) => Text(
                    "$index",
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10),
              const Text(
                "Experience",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    5,
                    (index) => ListTile(
                          leading: Text(
                            "${index + 1}",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          title: Text(
                            "COmpany Name",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Designation",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            "year of exprince",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
              ),
             const SizedBox(height: 10),
              const Text(
                "Experience",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            const  Divider(color: Colors.black),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    5,
                    (index) => ListTile(
                          leading: Text(
                            "${index + 1}",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          title: Text(
                            "COmpany Name ",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Designation",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(
                            "year of exprince",
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
              ),
              SizedBox(height: 10),
              const Text(
                "Education",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Divider(color: Colors.black),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    3,
                    (index) => ListTile(
                          leading: Text(
                            "${index + 1}",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          title: const Text(
                            "COmpany Name ",
                            style:  TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text(
                            "Designation",
                            style:  TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: const Text(
                            "year of exprince",
                            style:  TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
              ),
              const SizedBox(height: 10),
              const Text(
                "Personal Details",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
             const Divider(color: Colors.black),
              Column(
                children: List.generate(
                    5,
                    (index) => Row(
                          children: const [
                            Expanded(
                              flex: 1,
                              child: Text("Address",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text("Address",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  )),
                            )
                          ],
                        )),
              )
            ],
          )),
        ),
      ),
    );
  }
}
