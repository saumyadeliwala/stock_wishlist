import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WatchlistScreen extends StatelessWidget {
  final List<Map<String, dynamic>> stocks = [
    {"name": "RELIANCE", "price": 3000, "change": "+5.35 (+0.12%)", "color": Colors.green},
    {"name": "MRF", "price": 123000, "change": "-300.35 (-0.21%)", "color": Colors.red},
    {"name": "TATAINVEST", "price": 3600, "change": "+15.35 (+0.18%)", "color": Colors.green},
    {"name": "TATASTEEL", "price": 1600, "change": "+5.35 (+0.12%)", "color": Colors.green},
    {"name": "ADANIENT", "price": 3500, "change": "+1.60 (+0.06%)", "color": Colors.green},
    {"name": "PAYTM", "price": 500, "change": "-5.35 (-0.12%)", "color": Colors.red},
    {"name": "NYKAA", "price": 1000, "change": "+8.95 (+0.08%)", "color": Colors.green},
    {"name": "ASIANPAINT", "price": 3000, "change": "", "color": Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( 
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("Watchlist", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600)),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _buildTabBar(),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: List.generate(4, (index) => _buildStockList()), 
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      isScrollable: true, 
      indicatorColor: Colors.black,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      labelStyle: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w600),
      unselectedLabelStyle: GoogleFonts.poppins(fontSize: 15),
      tabs: [
        Tab(text: "Watchlist 1"),
        Tab(text: "Watchlist 2"),
        Tab(text: "Watchlist 3"),
        Tab(text: "Watchlist 4"),
      ],
    );
  }

  Widget _buildStockList() {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemCount: stocks.length,
      separatorBuilder: (context, index) => Divider(color: Colors.grey.shade300),
      itemBuilder: (context, index) {
        final stock = stocks[index];
        return ListTile(
          title: Text(stock["name"], style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
          subtitle: Text("NSE | EQ", style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey.shade600)),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "₹${stock["price"].toString()}",
                style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: stock["color"]),
              ),
              if (stock["change"] != "")
                Text(
                  stock["change"],
                  style: GoogleFonts.poppins(fontSize: 12, color: stock["color"]),
                ),
            ],
          ),
        );
      },
    );
  }
}
