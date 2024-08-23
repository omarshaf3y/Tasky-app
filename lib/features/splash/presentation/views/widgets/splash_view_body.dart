import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController _taskController;
  late AnimationController _yController;
  late Animation<Offset> _taskAnimation;
  late Animation<Offset> _yAnimation;

  @override
  void initState() {
    super.initState();

    _taskController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _yController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _taskAnimation = Tween<Offset>(
      begin: const Offset(-2.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _taskController,
      curve: Curves.easeInOut,
    ));

    _yAnimation = Tween<Offset>(
      begin: const Offset(2.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _yController,
      curve: Curves.easeInOut,
    ));

    _taskController.forward();
    _yController.forward();
  }

  @override
  void dispose() {
    _taskController.dispose();
    _yController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          SlideTransition(
            position: _taskAnimation,
            child: const Text(
              'Task',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SlideTransition(
            position: _yAnimation,
            child: const Padding(
              padding: EdgeInsets.only(left: 110),
              child: Text(
                'y',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
