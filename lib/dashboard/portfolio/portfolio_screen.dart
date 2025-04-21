import 'package:achiiv/dashboard/portfolio/explore_card.dart';
import 'package:achiiv/dashboard/portfolio/investment_card.dart';
import 'package:achiiv/dashboard/portfolio/pensions_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final List<String> _portfolioItems =
      List.generate(20, (index) => 'Item $index');
  bool _isRefreshing = false;
  bool _hideBalance = true;

  Future<void> _refreshPortfolio() async {
    setState(() {
      _isRefreshing = true;
    });

    // Simulate a network call
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _portfolioItems.shuffle(); // Example: shuffle items to simulate refresh
      _isRefreshing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshPortfolio,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Investments 🔐',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _hideBalance = !_hideBalance;
                      });
                      // Handle "See All" action
                    },
                    child: Container(
                      width: 36,
                      height: 34,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 244, 1),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: SvgPicture.asset(
                         _hideBalance ? 'images/show.svg' :'images/hide.svg',
                        semanticsLabel: 'Hide/Show Icon',
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InvestmentCard(hideBalance: _hideBalance,),
            PensionsCard(),
            const ExploreCard(),
          ],
        ),
      ),
    );
  }
}
