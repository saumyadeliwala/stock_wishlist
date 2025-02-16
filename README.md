# Welcome to your my app 👋
###### Created by SAUMYA DELIWALA


# Watchlist App - Flutter
This is a simple Flutter app screen that shows a watchlist of stocks. It has multiple tabs, and you can see stock details like name, price, and change in percentage.

---
## My Approach
I wanted to build a clean, easy-to-use app for viewing stock watchlists. I started by:
- Breaking the app into small parts: one for the main screen, one for the stock list, and one for the tabs.
- Using tabs to let users switch between watchlists, keeping the layout simple.
- Showing price changes in green (up) or red (down) for quick understanding.
- Keeping the data static for now. I focused on making the app fast and simple, with room to add more features in the future.
---

## Features
- **Tabs**: Switch between four watchlists.
- **Stock List**: View stock details.
- **Color Coding**: Green for positive changes, red for negative.

## Code Overview
### `WatchlistScreen`
- Holds sample stock data.
- Displays an app bar with tabs.
- Shows stock details in a list.

### `_buildTabBar()`
Creates a scrollable tab bar.

### `_buildStockList()`
Generates a stock list using `ListView.separated`.

## How to Run
1. Clone the repo.
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the app:
   ```sh
   flutter run
   ```

---
## Notes
* Uses static data for now (not live)
* Works on Android 
* Clean, simple design with room to add features
---
For feedback, email me at [saumyadeliwala@gmail.com](mailto:saumyadeliwala@gmail.com).

LinkedIn [https://www.linkedin.com/in/saumya-deliwala/](https://www.linkedin.com/in/saumya-deliwala/).


