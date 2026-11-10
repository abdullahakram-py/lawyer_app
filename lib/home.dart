import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lawyer_app/app_colors.dart';
import 'package:lawyer_app/app_text_styles.dart';
import 'package:lawyer_app/history.dart';
import 'package:lawyer_app/profilescreen.dart';
import 'package:lawyer_app/yoursaving.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Home extends StatefulWidget {
  const new({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late final AnimationController _entranceController;
  late final Animation<double> _headerEntrance;
  late final Animation<double> _balanceEntrance;
  late final Animation<double> _cardsEntrance;
  late final Animation<double> _savingEntrance;
  late final Animation<Offset> _headerSlide;
  late final Animation<Offset> _balanceSlide;
  late final Animation<Offset> _cardsSlide;
  late final Animation<Offset> _savingSlide;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _entranceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..forward();
    _headerEntrance = _entranceController.drive(
      CurveTween(curve: const Interval(0, .48, curve: Curves.easeOutCubic)),
    );
    _balanceEntrance = _entranceController.drive(
      CurveTween(curve: const Interval(.12, .64, curve: Curves.easeOutCubic)),
    );
    _cardsEntrance = _entranceController.drive(
      CurveTween(curve: const Interval(.25, .82, curve: Curves.easeOutCubic)),
    );
    _savingEntrance = _entranceController.drive(
      CurveTween(curve: const Interval(.4, 1, curve: Curves.easeOutCubic)),
    );
    _headerSlide = Tween<Offset>(
      begin: const Offset(0, -.12),
      end: Offset.zero,
    ).animate(_headerEntrance);
    _balanceSlide = Tween<Offset>(
      begin: const Offset(0, .08),
      end: Offset.zero,
    ).animate(_balanceEntrance);
    _cardsSlide = Tween<Offset>(
      begin: const Offset(0, .08),
      end: Offset.zero,
    ).animate(_cardsEntrance);
    _savingSlide = Tween<Offset>(
      begin: const Offset(0, .08),
      end: Offset.zero,
    ).animate(_savingEntrance);
    _pageController = PageController(viewportFraction: .88);
  }

  @override
  void dispose() {
    _entranceController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppColors.theme,
      child: Scaffold(
        backgroundColor: AppColors.backgroundTop,
        body: Stack(
          children: [
            const Positioned.fill(child: _HomeBackground()),
            SafeArea(
              bottom: false,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final horizontalPadding = constraints.maxWidth > 600
                      ? 32.0
                      : 20.0;
                  return Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 560),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.fromLTRB(
                          horizontalPadding,
                          12,
                          horizontalPadding,
                          132 + MediaQuery.paddingOf(context).bottom,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            FadeTransition(
                              opacity: _headerEntrance,
                              child: SlideTransition(
                                position: _headerSlide,
                                child: const _HomeHeader(),
                              ),
                            ),
                            const SizedBox(height: 24),
                            FadeTransition(
                              opacity: _balanceEntrance,
                              child: SlideTransition(
                                position: _balanceSlide,
                                child: const BalanceCard(),
                              ),
                            ),
                            const SizedBox(height: 28),
                            FadeTransition(
                              opacity: _cardsEntrance,
                              child: SlideTransition(
                                position: _cardsSlide,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    _SectionHeading(
                                      title: 'Your Cards',
                                      onViewAll: () {},
                                    ),
                                    const SizedBox(height: 14),
                                    SizedBox(
                                      height: 190,
                                      child: PageView.builder(
                                        controller: _pageController,
                                        physics: const BouncingScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return AnimatedBuilder(
                                            animation: _pageController,
                                            builder: (context, child) {
                                              var page = 0.0;
                                              if (_pageController.hasClients &&
                                                  _pageController
                                                      .position
                                                      .hasContentDimensions) {
                                                page =
                                                    _pageController.page ??
                                                    _pageController.initialPage
                                                        .toDouble();
                                              }
                                              final distance = (page - index)
                                                  .abs();
                                              final scale = (1 - distance * .1)
                                                  .clamp(.9, 1.0)
                                                  .toDouble();
                                              return Transform.scale(
                                                scale: scale,
                                                child: Opacity(
                                                  opacity: (1 - distance * .22)
                                                      .clamp(.76, 1.0)
                                                      .toDouble(),
                                                  child: child,
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 5,
                                                    vertical: 4,
                                                  ),
                                              child: BankCard(index: index),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 28),
                            FadeTransition(
                              opacity: _savingEntrance,
                              child: SlideTransition(
                                position: _savingSlide,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    _SectionHeading(
                                      title: 'Your Saving',
                                      onViewAll: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Yoursaving(),
                                          ),
                                        );
                                      },
                                    ),
                                    const SizedBox(height: 14),
                                    const SavingTile(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: MediaQuery.paddingOf(context).bottom + 12,
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 520),
                  child: FloatingNavBar(
                    onHistory: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => History()),
                      );
                    },
                    onVerifiedUsers: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profilescreen(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeBackground extends StatelessWidget {
  const _HomeBackground();

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const DecoratedBox(
          decoration: BoxDecoration(gradient: AppColors.backgroundGradient),
        ),
        Align(
          alignment: const Alignment(.1, -.36),
          child: IgnorePointer(
            child: Container(
              width: 430,
              height: 390,
              decoration: const BoxDecoration(
                gradient: RadialGradient(colors: AppColors.balanceGlow),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _HomeHeader extends StatelessWidget {
  const _HomeHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppColors.avatarGradient,
          ),
          child: Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              color: AppColors.avatarSurface,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text('MA', style: AppTextStyles.avatar),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back!', style: AppTextStyles.greeting),
              SizedBox(height: 3),
              Text(
                'Muhammad Abdullah',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.userName,
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Semantics(
          label: 'Notifications',
          button: true,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.glassSurface,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.glassBorder),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  PhosphorIcons.bellSimple(PhosphorIconsStyle.regular),
                  color: AppColors.textPrimary,
                  size: 22,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: const BoxDecoration(
                      color: AppColors.error,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: AppColors.balanceGradient,
        border: Border.all(color: AppColors.glassBorder),
        boxShadow: const [
          BoxShadow(
            color: AppColors.accentShadow,
            blurRadius: 30,
            offset: Offset(0, 14),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(27),
        child: Stack(
          children: [
            Positioned(
              right: -44,
              top: -72,
              child: Container(
                width: 190,
                height: 190,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.whiteFaint, width: 28),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'My Balance',
                          style: AppTextStyles.balanceLabel,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.successPill,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: AppColors.successBorder),
                        ),
                        child: Text(
                          '+2.4% this month',
                          style: AppTextStyles.positiveChange,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0, end: 24567.89),
                          duration: const Duration(milliseconds: 1200),
                          curve: Curves.easeOutCubic,
                          builder: (context, value, child) {
                            return Text(
                              _formatCurrency(value),
                              maxLines: 1,
                              style: AppTextStyles.balanceAmount,
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 6),
                      Icon(
                        PhosphorIcons.eye(PhosphorIconsStyle.regular),
                        color: AppColors.textSecondary,
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 30,
                    child: _MiniSparkline(
                      color: AppColors.cyan,
                      backgroundColor: AppColors.sparklineFill,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: const [
                      Expanded(
                        child: ActionButton(
                          label: 'Send',
                          icon: PhosphorIconsRegular.arrowUpRight,
                          index: 0,
                        ),
                      ),
                      Expanded(
                        child: ActionButton(
                          label: 'Request',
                          icon: PhosphorIconsRegular.arrowDownLeft,
                          index: 1,
                        ),
                      ),
                      Expanded(
                        child: ActionButton(
                          label: 'Pay',
                          icon: PhosphorIconsRegular.scan,
                          index: 2,
                        ),
                      ),
                      Expanded(
                        child: ActionButton(
                          label: 'Top up',
                          icon: PhosphorIconsRegular.plusCircle,
                          index: 3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatefulWidget {
  const ActionButton({
    super.key,
    required this.label,
    required this.icon,
    required this.index,
  });

  final String label;
  final IconData icon;
  final int index;

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 360),
    );
    Future<void>.delayed(Duration(milliseconds: widget.index * 80), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _controller.value,
          child: Transform.translate(
            offset: Offset(0, 10 * (1 - _controller.value)),
            child: child,
          ),
        );
      },
      child: _PressScale(
        child: Semantics(
          button: true,
          label: widget.label,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: AppColors.actionGradient,
                      border: Border.all(color: AppColors.actionBorder),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.actionShadow,
                          blurRadius: 16,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      widget.icon,
                      color: AppColors.textPrimary,
                      size: 23,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(widget.label, style: AppTextStyles.actionLabel),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MiniSparkline extends StatelessWidget {
  const _MiniSparkline({required this.color, required this.backgroundColor});

  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeOutCubic,
      builder: (context, progress, child) {
        return CustomPaint(
          painter: _SparklinePainter(
            progress: progress,
            color: color,
            fill: backgroundColor,
          ),
          child: const SizedBox.expand(),
        );
      },
    );
  }
}

class _SparklinePainter extends CustomPainter {
  const _SparklinePainter({
    required this.progress,
    required this.color,
    required this.fill,
  });

  final double progress;
  final Color color;
  final Color fill;

  @override
  void paint(Canvas canvas, Size size) {
    const points = [
      Offset(0, .72),
      Offset(.14, .56),
      Offset(.28, .65),
      Offset(.42, .38),
      Offset(.56, .48),
      Offset(.70, .26),
      Offset(.84, .34),
      Offset(1, .12),
    ];
    final visibleWidth = size.width * progress;
    final path = Path();
    for (var index = 0; index < points.length; index++) {
      final point = Offset(
        points[index].dx * visibleWidth,
        points[index].dy * size.height,
      );
      if (index == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }

    final fillPath = Path.from(path)
      ..lineTo(visibleWidth, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(
      fillPath,
      Paint()
        ..shader = LinearGradient(
          colors: [fill, AppColors.transparent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(Offset.zero & size),
    );
    canvas.drawPath(
      path,
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round,
    );
    if (progress >= 1) {
      canvas.drawCircle(
        Offset(size.width, points.last.dy * size.height),
        3,
        Paint()..color = color,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _SparklinePainter oldDelegate) {
    return progress != oldDelegate.progress ||
        color != oldDelegate.color ||
        fill != oldDelegate.fill;
  }
}

class _SectionHeading extends StatelessWidget {
  const _SectionHeading({required this.title, required this.onViewAll});

  final String title;
  final VoidCallback onViewAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(title, style: AppTextStyles.sectionTitle)),
        _PressScale(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onViewAll,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
              child: Text('View all', style: AppTextStyles.viewAll),
            ),
          ),
        ),
      ],
    );
  }
}

class BankCard extends StatefulWidget {
  const BankCard({super.key, required this.index});

  final int index;

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _shineController;
  Offset _tilt = Offset.zero;

  LinearGradient get _gradient {
    switch (widget.index % 3) {
      case 1:
        return AppColors.cardTealGradient;
      case 2:
        return AppColors.cardGoldGradient;
      default:
        return AppColors.cardIndigoGradient;
    }
  }

  void _updateTilt(PointerEvent event) {
    final size = context.size;
    if (size == null || size.isEmpty) return;
    final normalizedX = (event.localPosition.dx / size.width - .5) * 2;
    final normalizedY = (event.localPosition.dy / size.height - .5) * 2;
    setState(() {
      _tilt = Offset(normalizedY * -.035, normalizedX * .035);
    });
  }

  @override
  void initState() {
    super.initState();
    _shineController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();
  }

  @override
  void dispose() {
    _shineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _PressScale(
      child: Listener(
        onPointerMove: _updateTilt,
        onPointerUp: (_) => setState(() => _tilt = Offset.zero),
        onPointerCancel: (_) => setState(() => _tilt = Offset.zero),
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, .001)
            ..rotateX(_tilt.dx)
            ..rotateY(_tilt.dy),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              gradient: _gradient,
              border: Border.all(color: AppColors.glassBorder),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.cardShadow,
                  blurRadius: 26,
                  offset: Offset(0, 12),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: AnimatedBuilder(
                      animation: _shineController,
                      builder: (context, child) {
                        final drift = math.sin(
                          _shineController.value * math.pi * 2,
                        );
                        return Stack(
                          children: [
                            Positioned(
                              right: -36 + drift * 10,
                              top: -58 + drift * 8,
                              child: Container(
                                width: 178,
                                height: 178,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.whiteFaint,
                                    width: 25,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 98 - drift * 8,
                              bottom: -96 + drift * 7,
                              child: Container(
                                width: 170,
                                height: 170,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.whiteFaint,
                                    width: 22,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: IgnorePointer(
                      child: AnimatedBuilder(
                        animation: _shineController,
                        builder: (context, child) {
                          final offset = -1.6 + _shineController.value * 3.2;
                          return DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(offset, -1),
                                end: Alignment(offset + .8, 1),
                                colors: const [
                                  AppColors.transparent,
                                  AppColors.cardShine,
                                  AppColors.transparent,
                                ],
                                stops: const [0, .5, 1],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 15, 18, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Payment Card',
                                style: AppTextStyles.cardLabel,
                              ),
                            ),
                            const _MastercardLogo(),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            AnimatedBuilder(
                              animation: _shineController,
                              builder: (context, child) => Opacity(
                                opacity:
                                    .76 +
                                    math
                                            .sin(
                                              _shineController.value *
                                                  math.pi *
                                                  2,
                                            )
                                            .abs() *
                                        .24,
                                child: child,
                              ),
                              child: const _CardChip(),
                            ),
                            const Spacer(),
                            Icon(
                              PhosphorIcons.wifiHigh(
                                PhosphorIconsStyle.regular,
                              ),
                              color: AppColors.cardMutedText,
                              size: 21,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '2298 1268 3398 9874',
                          style: AppTextStyles.cardNumber,
                        ),
                        const SizedBox(height: 7),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TweenAnimationBuilder<double>(
                                tween: Tween(begin: 0, end: 2885),
                                duration: const Duration(milliseconds: 1100),
                                curve: Curves.easeOutCubic,
                                builder: (context, value, child) {
                                  return Text(
                                    _formatCurrency(value),
                                    style: AppTextStyles.cardAmount,
                                  );
                                },
                              ),
                            ),
                            Text('12/24', style: AppTextStyles.cardExpiry),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MastercardLogo extends StatelessWidget {
  const _MastercardLogo();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 26,
      child: Stack(
        children: [
          Positioned(
            left: 2,
            top: 4,
            child: Container(
              width: 21,
              height: 21,
              decoration: const BoxDecoration(
                color: AppColors.mastercardRed,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 2,
            top: 4,
            child: Container(
              width: 21,
              height: 21,
              decoration: const BoxDecoration(
                color: AppColors.mastercardYellow,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CardChip extends StatelessWidget {
  const _CardChip();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 26,
      decoration: BoxDecoration(
        color: AppColors.chipGold,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.chipBorder),
      ),
      child: CustomPaint(painter: _ChipPatternPainter()),
    );
  }
}

class _ChipPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.chipLine
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width / 2, size.height)
      ..moveTo(0, size.height / 2)
      ..lineTo(size.width, size.height / 2)
      ..moveTo(size.width * .22, 0)
      ..lineTo(size.width * .22, size.height)
      ..moveTo(size.width * .78, 0)
      ..lineTo(size.width * .78, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SavingTile extends StatelessWidget {
  const SavingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.glassSurface,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: AppColors.glassBorder),
          ),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  gradient: AppColors.savingIconGradient,
                ),
                child: Icon(
                  PhosphorIcons.gameController(PhosphorIconsStyle.regular),
                  color: AppColors.gold,
                  size: 27,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buy Play Station',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.savingTitle,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Slim 2TB 5G Games',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.savingSubtitle,
                    ),
                    SizedBox(height: 12),
                    _SavingProgressBar(),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              const _SavingProgressRing(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SavingProgressBar extends StatelessWidget {
  const _SavingProgressBar();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: .8),
        duration: const Duration(seconds: 1),
        curve: Curves.easeOutCubic,
        builder: (context, progress, child) {
          return LinearProgressIndicator(
            value: progress,
            minHeight: 4,
            backgroundColor: AppColors.progressTrack,
            valueColor: const AlwaysStoppedAnimation(AppColors.cyan),
          );
        },
      ),
    );
  }
}

class _SavingProgressRing extends StatelessWidget {
  const _SavingProgressRing();

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: .8),
      duration: const Duration(seconds: 1),
      curve: Curves.easeOutCubic,
      builder: (context, progress, child) {
        return SizedBox(
          width: 58,
          height: 58,
          child: CustomPaint(
            painter: _ProgressRingPainter(progress: progress),
            child: Center(
              child: Text(
                '${(progress * 100).round()}%',
                style: AppTextStyles.progressLabel,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ProgressRingPainter extends CustomPainter {
  const _ProgressRingPainter({required this.progress});

  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 4.5;
    final rect = Offset.zero & size;
    final trackPaint = Paint()
      ..color = AppColors.progressTrack
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawArc(
      rect.deflate(strokeWidth / 2),
      -math.pi / 2,
      math.pi * 2,
      false,
      trackPaint,
    );
    final progressPaint = Paint()
      ..shader = const SweepGradient(
        startAngle: -math.pi / 2,
        endAngle: math.pi * 1.5,
        colors: [AppColors.cyan, AppColors.accent],
      ).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(
      rect.deflate(strokeWidth / 2),
      -math.pi / 2,
      math.pi * 2 * progress,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _ProgressRingPainter oldDelegate) {
    return progress != oldDelegate.progress;
  }
}

class FloatingNavBar extends StatelessWidget {
  const FloatingNavBar({
    super.key,
    required this.onHistory,
    required this.onVerifiedUsers,
  });

  final VoidCallback onHistory;
  final VoidCallback onVerifiedUsers;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
        child: Container(
          height: 68,
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.navSurface,
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: AppColors.glassBorder),
            boxShadow: const [
              BoxShadow(
                color: AppColors.navShadow,
                blurRadius: 28,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            children: [
              const Expanded(
                child: _NavItem(
                  label: 'Home',
                  icon: PhosphorIconsRegular.house,
                  selectedIcon: PhosphorIconsFill.house,
                  selected: true,
                ),
              ),
              Expanded(
                child: _NavItem(
                  label: 'History',
                  icon: PhosphorIconsRegular.clockCounterClockwise,
                  selectedIcon: PhosphorIconsFill.clockCounterClockwise,
                  onTap: onHistory,
                ),
              ),
              const Expanded(
                child: _NavItem(
                  label: 'Statistics',
                  icon: PhosphorIconsRegular.chartBar,
                  selectedIcon: PhosphorIconsFill.chartBar,
                ),
              ),
              Expanded(
                child: _NavItem(
                  label: 'Verified users',
                  icon: PhosphorIconsRegular.sealCheck,
                  selectedIcon: PhosphorIconsFill.sealCheck,
                  onTap: onVerifiedUsers,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    this.selected = false,
    this.onTap,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return _PressScale(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap ?? () {},
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          decoration: BoxDecoration(
            color: selected ? AppColors.navActive : AppColors.transparent,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                selected ? selectedIcon : icon,
                size: 20,
                color: selected
                    ? AppColors.textPrimary
                    : AppColors.textSecondary,
              ),
              const SizedBox(height: 3),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  label,
                  maxLines: 1,
                  style: selected
                      ? AppTextStyles.navLabelSelected
                      : AppTextStyles.navLabel,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PressScale extends StatefulWidget {
  const _PressScale({required this.child});

  final Widget child;

  @override
  State<_PressScale> createState() => _PressScaleState();
}

class _PressScaleState extends State<_PressScale> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) => setState(() => _pressed = true),
      onPointerUp: (_) => setState(() => _pressed = false),
      onPointerCancel: (_) => setState(() => _pressed = false),
      child: AnimatedScale(
        scale: _pressed ? .96 : 1,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        child: widget.child,
      ),
    );
  }
}

String _formatCurrency(double amount) {
  final wholeAmount = amount.floor();
  final wholeDigits = wholeAmount.toString();
  final grouped = StringBuffer();
  for (var index = 0; index < wholeDigits.length; index++) {
    if (index > 0 && (wholeDigits.length - index) % 3 == 0) {
      grouped.write(',');
    }
    grouped.write(wholeDigits[index]);
  }
  final cents = ((amount - wholeAmount) * 100).round().clamp(0, 99);
  return '\$${grouped.toString()}.${cents.toString().padLeft(2, '0')}';
}
