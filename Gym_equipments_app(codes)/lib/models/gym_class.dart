import 'package:flutter/material.dart';

class GymClass {
  final int id;
  final String name;
  final String description;
  final IconData icon;
  final Color color;

  GymClass({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.color,
  });

  static List<GymClass> getAllClasses() {
    return [
      GymClass(
        id: 0,
        name: 'Dumbbell',
        description: 'Free weights for strength training and muscle building',
        icon: Icons.fitness_center,
        color: Colors.orange,
      ),
      GymClass(
        id: 1,
        name: 'Bench Press',
        description: 'Equipment for upper body and chest exercises',
        icon: Icons.event_seat,
        color: Colors.red,
      ),
      GymClass(
        id: 2,
        name: 'Treadmill',
        description: 'Cardio equipment for running and walking exercises',
        icon: Icons.directions_run,
        color: Colors.blue,
      ),
      GymClass(
        id: 3,
        name: 'Rowing Machine',
        description: 'Full body cardio and strength training equipment',
        icon: Icons.kayaking,
        color: Colors.teal,
      ),
      GymClass(
        id: 4,
        name: 'Stationary Bike',
        description: 'Low impact cardio equipment for leg training',
        icon: Icons.two_wheeler,
        color: Colors.green,
      ),
      GymClass(
        id: 5,
        name: 'Smith Machine',
        description: 'Guided barbell system for safe weight training',
        icon: Icons.account_balance,
        color: Colors.purple,
      ),
      GymClass(
        id: 6,
        name: 'Pull-up Bar',
        description: 'Bodyweight exercise equipment for back and arms',
        icon: Icons.arrow_upward,
        color: Colors.indigo,
      ),
      GymClass(
        id: 7,
        name: 'Kettle Bell',
        description: 'Compact weight for dynamic and explosive exercises',
        icon: Icons.bathtub,
        color: Colors.amber,
      ),
      GymClass(
        id: 8,
        name: 'Ab Roller',
        description: 'Core strengthening equipment for abdominal exercises',
        icon: Icons.grain,
        color: Colors.pink,
      ),
      GymClass(
        id: 9,
        name: 'Resistance Bands',
        description:
            'Flexible bands for resistance training and rehabilitation',
        icon: Icons.waves,
        color: Colors.cyan,
      ),
    ];
  }
}
