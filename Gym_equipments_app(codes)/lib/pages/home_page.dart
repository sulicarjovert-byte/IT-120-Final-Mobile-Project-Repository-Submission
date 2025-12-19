import 'package:flutter/material.dart';
import '../models/gym_class.dart';
import 'class_detail_page.dart';
import 'classification_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = GymClass.getAllClasses();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gym Equipment Classifier'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.deepPurple,
                  Colors.deepPurple.shade400,
                ],
              ),
            ),
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Identify Equipment',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Discover gym equipment details or classify new items',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withValues(alpha: 0.9),
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Equipment Classes',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.85,
                      ),
                      itemCount: classes.length,
                      itemBuilder: (context, index) {
                        return _ClassCard(
                          gymClass: classes[index],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ClassDetailPage(gymClass: classes[index]),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ClassificationPage(),
            ),
          );
        },
        icon: const Icon(Icons.camera_alt),
        label: const Text('Classify'),
      ),
    );
  }
}

class _ClassCard extends StatefulWidget {
  final GymClass gymClass;
  final VoidCallback onTap;

  const _ClassCard({
    required this.gymClass,
    required this.onTap,
  });

  @override
  State<_ClassCard> createState() => _ClassCardState();
}

class _ClassCardState extends State<_ClassCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) {
          setState(() => _isHovered = true);
        },
        onExit: (_) {
          setState(() => _isHovered = false);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          transform: Matrix4.identity()..scale(_isHovered ? 1.06 : 1.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: widget.gymClass.color.withValues(alpha: _isHovered ? 0.4 : 0.05),
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: widget.gymClass.color.withValues(
                  alpha: _isHovered ? 0.25 : 0.1,
                ),
                blurRadius: _isHovered ? 20 : 10,
                offset: _isHovered ? const Offset(0, 14) : const Offset(0, 6),
                spreadRadius: _isHovered ? 2 : 0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        widget.gymClass.color.withValues(alpha: 0.25),
                        widget.gymClass.color.withValues(alpha: 0.08),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: widget.gymClass.color.withValues(alpha: 0.15),
                      width: 1.5,
                    ),
                  ),
                  child: Icon(
                    widget.gymClass.icon,
                    size: 44,
                    color: widget.gymClass.color,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      widget.gymClass.name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.gymClass.description,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey[600],
                            height: 1.25,
                            fontSize: 11,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        widget.gymClass.color.withValues(alpha: 0.18),
                        widget.gymClass.color.withValues(alpha: 0.06),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      color: widget.gymClass.color.withValues(alpha: 0.25),
                    ),
                  ),
                  child: Text(
                    'View Details →',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: widget.gymClass.color,
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
