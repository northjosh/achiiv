import 'package:achiiv/dashboard/explore/explore_screen.dart';
import 'package:achiiv/dashboard/more/more_screen.dart';
import 'package:achiiv/dashboard/portfolio/portfolio_screen.dart';
import 'package:achiiv/dashboard/profile/profile_scren.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardShell extends StatefulWidget {
  const DashboardShell({super.key});

  @override
  State<DashboardShell> createState() => _DashboardShellState();
}

class _DashboardShellState extends State<DashboardShell> {

      int _selectedPageIndex = 0;

    void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    Widget activePage= PortfolioScreen();

    switch(_selectedPageIndex) {
        case 0:
        activePage = PortfolioScreen();
        case 1:
         activePage = ExploreScreen();
        case 2:
         activePage = MoreScreen();
         case 3 :
         activePage = ProfileScren();
        
        default:
        activePage = PortfolioScreen();
            
    }
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(249, 250, 251, 1),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text('Hi, Joshua', 
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SvgPicture.asset(
                'images/notif.svg',
                semanticsLabel: 'Red dash paths',
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(right: 16.0),
              child: SvgPicture.asset(
                'images/chat.svg',
                semanticsLabel: 'Red dash paths',
              ),
            ),
            
          ],
        ),
        body: activePage,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:  Colors.white,
          selectedItemColor:const Color.fromARGB(255, 37, 48, 98), // Color for the selected item
          unselectedItemColor: const Color.fromARGB(255, 37, 48, 98), // Color for unselected items
          selectedFontSize: 12, // Font size for the selected label
          unselectedFontSize: 12, // Font size for unselected labels
          type: BottomNavigationBarType.fixed, // Ensures all items are visible
          currentIndex: 0,
           // Set the current selected index
          onTap: (index) {
            setState(() {
                _selectedPageIndex = index;
            });
          },
          
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'images/home.svg',
                semanticsLabel: 'Home Icon',
              ),
              activeIcon: SvgPicture.asset(
                'images/home.svg',
                semanticsLabel: 'Home Icon',
              ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'images/compass.svg',
                semanticsLabel: 'Compass Icon',
              ),
              activeIcon: SvgPicture.asset(
                'images/compass.svg',
                semanticsLabel: 'Compass Icon',
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'images/dashboard.svg',
                semanticsLabel: 'Dashboard Icon',
              ),
              activeIcon: SvgPicture.asset(
                'images/dashboard.svg',
                semanticsLabel: 'Dashboard Icon',
              ),
              label: 'More',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'images/profile.svg',
                semanticsLabel: 'Profile Icon',
              ),
              activeIcon: SvgPicture.asset(
                'images/profile.svg',
                semanticsLabel: 'Profile Icon',
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
