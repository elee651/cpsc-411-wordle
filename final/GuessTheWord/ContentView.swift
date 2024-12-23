import SwiftUI

struct ContentView: View {
  @StateObject var game = GuessingGame()
  @State private var showStats = false

  var body: some View {
    VStack {
      Text("Try Guessing")
        .font(.title)
        .accessibilityAddTraits(.isHeader)
      GameBoardView(game: game)
      KeyboardView(game: game)
        .padding(5)
      ActionBarView(
        showStats: $showStats,
        game: game
      )
    }
    .frame(alignment: .top)
    .padding([.bottom], 10)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
