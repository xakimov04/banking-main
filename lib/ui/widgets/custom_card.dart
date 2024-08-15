import 'dart:math';
import 'package:flutter/material.dart';

import 'package:banking/ui/widgets/custom_text.dart';

class CustomCard extends StatefulWidget {
  final String cardnumber;
  final String name;
  final String expiryDate;
  final String balance;

  const CustomCard({
    super.key,
    required this.cardnumber,
    required this.name,
    required this.expiryDate,
    required this.balance,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard>
    with SingleTickerProviderStateMixin {
  bool _showBackSide = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void _flipCard() {
    if (_showBackSide) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    _showBackSide = !_showBackSide;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _flipCard,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final angle = _animation.value * pi;
          final transform = Matrix4.identity()
            ..setEntry(3, 2, 0.001) // Perspective
            ..rotateY(angle);

          return Transform(
            transform: transform,
            alignment: Alignment.center,
            child: _animation.value < 0.5
                ? _buildFrontSide()
                : Transform(
                    transform: Matrix4.identity()..rotateY(pi),
                    alignment: Alignment.center,
                    child: _buildBackSide(),
                  ),
          );
        },
      ),
    );
  }

  Widget _buildFrontSide() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.teal.shade200, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: "Kapital Bank",
              color: Colors.white,
              fontSize: 24,
            ),
            const Spacer(),
            Image.asset(
              "assets/icons/chip.png",
              height: 40,
              width: 40,
            ),
            const Spacer(),
            CustomText(
              text: widget.cardnumber,
              color: Colors.white,
              fontSize: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: widget.name,
                  fontSize: 20,
                  color: Colors.white,
                ),
                CustomText(
                  text: widget.expiryDate,
                  fontSize: 20,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBackSide() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.teal.shade200, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Center(
          child: CustomText(
            text: "${widget.balance} UZS",
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
