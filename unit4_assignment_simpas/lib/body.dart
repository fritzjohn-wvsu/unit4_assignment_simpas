import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile Row
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                // Profile Image
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(
                          255, 216, 192, 140), // Border color
                      width: 2, // Border width
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/profile.jpg'), // Ensure this path is correct
                      fit: BoxFit.cover, // Use cover for better fit
                    ),
                  ),
                ),
                SizedBox(width: 50), // Space between image and text
                const Text(
                  "Fritz John Simpas",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          // Profile Section
          Center(
            // Center the content inside the container
            child: Container(
              color: const Color.fromARGB(255, 216, 192, 140),
              padding: const EdgeInsets.all(10),
              width: 1000, // Maintain the width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Me',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  buildInfoContainer(
                      Icons.cake, 'Birthdate', 'August 29, 2003'),
                  SizedBox(height: 10), // Space between items
                  buildInfoContainer(Icons.favorite, 'Hobbies',
                      'Playing Volleyball, Travel, reading online Mangas, Manhwa, and Manhua, playing mobile games.'),
                  SizedBox(height: 10), // Space between items
                  buildInfoContainer(Icons.location_on, 'Location',
                      'Brgy. Dawis New Lucena, Iloilo City, Philippines'),
                  SizedBox(height: 10), // Space between items
                  buildInfoContainer(
                      Icons.email, 'Email', 'fritzjohn.simpas@wvsu.edu.ph'),
                  SizedBox(height: 10), // Space between items
                  buildInfoContainer(
                      Icons.book, 'Course', 'BS in Information Technology'),
                  SizedBox(height: 10), // Space between items
                  buildInfoContainer(Icons.school, 'Education',
                      'West Visayas State University'),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

          // Biography Section
          Center(
            // Center the content inside the container
            child: Container(
              color: const Color.fromARGB(255, 216, 192, 140),
              padding: const EdgeInsets.all(10),
              width: 1000, // Maintain the width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Biography',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(
                      'Fritz, a 21-year-old Information Technology student in his third year at West Visayas State University, enjoys traveling, playing volleyball, reading online mangas, manhwa, and manhua, as well as playing mobile games.'),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  // Method to create an info container with an icon
  Widget buildInfoContainer(IconData icon, String title, String info) {
    return Row(
      children: [
        Icon(icon,
            size: 24,
            color: Colors.black), // Set the size and color of the icon
        SizedBox(width: 10), // Space between icon and text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(info),
          ],
        ),
      ],
    );
  }
}
