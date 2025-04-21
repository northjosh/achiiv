import 'package:achiiv/dashboard/explore/loan_card.dart';
import 'package:achiiv/dashboard/explore/painted_card.dart';
import 'package:achiiv/dashboard/explore/colored_card.dart';
import 'package:achiiv/dashboard/portfolio/pensions_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:styled_text/tags/styled_text_tag.dart';
import 'package:styled_text/widgets/styled_text.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text(
              "Invest",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            StyledText(
              text:
                  "Choose any of our investment options to start investing in. Dont know which one to choose? <bold> Tap Here </bold>",
              tags: {
                'bold': StyledTextTag(
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              },
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.4,
              child: MasonryGridView(
                physics: ScrollPhysics(),
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  PaintedCard(
                    height: 200,
                  ),
                  PaintedCard(
                    color: Colors.black,
                    height: 150,
                    text: "Groups",
                  ),
                  PaintedCard(
                    color: Color.fromRGBO(113, 76, 237, 1),
                    height: 200,
                    text: "Fixed Investments",
                  ),
                  PaintedCard(
                    height: 150,
                    color: Color.fromRGBO(228, 147, 78, 1),
                    text: "Goals",
                  ),
                ],
              ),
            ),
            PensionsCard(),
            Text(
              "Loans",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("Loan offers available"),
            LoanCard(),
            Text(
              "Insure/Protect",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("Innovative Policies made just for you"),
            ColoredCard(
              title: "Insurance Cover",
              subTitle:
                  "Insurance for you, your kids, wife/ husbands, parents and parents in law ",
              buttonText: "Request Callback",
            ),
               Text(
              "Manage your work",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ColoredCard(
              title: "Employee Self-Service ",
              backgroundColor: Color.fromRGBO(240, 237, 252, 1),
              iconBackgroundColor: Color.fromRGBO(198, 184, 246, 1),
              subTitle:
                  "Insurance for you, your kids, wife/ husbands, parents and parents in law ",
              buttonText: "Request Callback",
            )
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  const Section(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.contents});

  final String title;
  final String subTitle;
  final List<Widget> contents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          subTitle,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        ),
        ...contents
      ],
    );
  }
}
