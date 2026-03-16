import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResumeSectionAccordion extends StatefulWidget {
  final String title;
  final String iconPath;
  final Widget child;

  const ResumeSectionAccordion({
    super.key,
    required this.title,
    required this.iconPath,
    required this.child,
  });

  @override
  State<ResumeSectionAccordion> createState() => _ResumeSectionAccordionState();
}

class _ResumeSectionAccordionState extends State<ResumeSectionAccordion> {
  bool isOpen = false;

  void toggle() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Column(
        children: [
          /// HEADER DO ACCORDION
          InkWell(
            onTap: toggle,
            borderRadius: BorderRadius.circular(18),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  /// ÍCONE
                  SvgPicture.asset(
                    widget.iconPath,
                    width: 20,
                    height: 20,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),

                  const SizedBox(width: 12),

                  /// TÍTULO
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  /// SETA
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 200),
                    turns: isOpen ? 0.5 : 0,
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// CONTEÚDO
          AnimatedCrossFade(
            firstChild: const SizedBox(),
            secondChild: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: widget.child,
            ),
            crossFadeState:
                isOpen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 200),
          ),
        ],
      ),
    );
  }
}
