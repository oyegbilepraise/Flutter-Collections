import 'package:flutter/material.dart';
import 'package:online_shop/Daily%20Exercise/widgets/bottom_nav_bar.dart';
import 'package:online_shop/Fintech/util/job_card.dart';
import 'package:online_shop/Fintech/util/recent_job_card.dart';

class FintechHomePage extends StatefulWidget {
  const FintechHomePage({Key? key}) : super(key: key);

  @override
  State<FintechHomePage> createState() => _FintechHomePageState();
}

class _FintechHomePageState extends State<FintechHomePage> {
  final List jobsForYou = [
    ['Uber', 'UI / UX Designer', 'assets/images/uber.png', '45', true],
    ['Google', 'Product Dev', 'assets/images/google.png', '80', false],
    ['Apple', 'Software Eng', 'assets/images/apple.png', '100', false],
  ];

  final List recentJobs = [
    ['Nike', 'UI / UX Designer', 'assets/images/nike.png', '85'],
    ['Apple', 'Software Eng', 'assets/images/apple.png', '100'],
    ['Google', 'Product Dev', 'assets/images/google.png', '80'],
    ['Uber', 'Marketer', 'assets/images/uber.png', '45'],
    ['Nike', 'UI / UX Designer', 'assets/images/nike.png', '85'],

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 75),
          //App Bar
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                'assets/images/menu_from_left.png',
                color: Colors.grey[800],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a New Path',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search for a job',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/images/preferences.png',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'For You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: jobsForYou.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => JobCard(
                companyName: jobsForYou[index][0],
                jobTitle: jobsForYou[index][1],
                logoImagePath: jobsForYou[index][2],
                hourlyRate: jobsForYou[index][3],
                isBlack: jobsForYou[index][4],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Recently Added',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index) => RecentJobCard(
                  companyName: recentJobs[index][0],
                  jobTitle: recentJobs[index][1],
                  logoImagePath: recentJobs[index][2],
                  hourlyRate: recentJobs[index][3],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
