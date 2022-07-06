import 'package:flutter/material.dart';
import 'package:job_seeker/model/JobResponse.dart';

class DetailScreen extends StatelessWidget {
  final Data job;

  const DetailScreen({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
      ),
      body: Center(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(
              10.0,
            ),
            color: Colors.green,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.jobTitle.toString(),
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      job.jobDetails!.companyName.toString(),
                      style: const TextStyle(
                          fontSize: 16.0, color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                        ),
                        Text(job.jobDetails!.lastDate.toString())
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

// Text(item.jobTitle.toString()),
// Image.network(item.logo.toString(),fit: BoxFit.fill,),
