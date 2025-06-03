import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  /// send email
  Future<void> _sendEmail(String email) async {
    final Uri emailLauncher = Uri(
        scheme: "mailto",
        path: email,
        query: "subject=App Feedback&body=my payment is pending ");
    await launchUrl(emailLauncher);
  }

  /// call
  Future<void> _call(String phoneNumber) async {
    final Uri emailLauncher = Uri(
      scheme: "tel",
      path: phoneNumber,
    );
    await launchUrl(emailLauncher);
  }

  /// message
  Future<void> _message(String phoneNumber) async {
    final Uri emailLauncher = Uri(
      scheme: "sms",
      path: phoneNumber,
    );
    await launchUrl(emailLauncher);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// --- app bar --- ///
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        elevation: 0,
      ),

      /// --- body --- ///
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            const Icon(
              Icons.contact_support,
              size: 160,
              color: Colors.blue,
            ),
            const SizedBox(height: 30),
            const Text(
              'We\'d love to hear from you!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Reach out to us via email or phone',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            /// email card
            const SizedBox(height: 40),
            _buildContactCard(
              icon: Icons.email,
              title: 'Email Us',
              subtitle: "rahulsahudev24@gmail.com",
              onTap: () => _sendEmail("rkrahulroy151617@gmail.com"),
              color: Colors.blue,
            ),

            /// call
            const SizedBox(height: 20),
            _buildContactCard(
              icon: Icons.phone,
              title: 'Call Us',
              subtitle: "phone",
              onTap: () => _call("1234567890"),
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            _buildContactCard(
              icon: Icons.phone,
              title: 'Message Us',
              subtitle: "message",
              onTap: () => _message("1234567890"),
              color: Colors.orange,
            ),
            const Spacer(),
            const Text(
              'We typically respond within 24 hours',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  /// card
  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
