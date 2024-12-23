import SwiftUI

struct StatisticsView: View {
  var stats: GameStatistics

  var body: some View {
    Text("Placeholder")
  }
}

struct StatisticsView_Previews: PreviewProvider {
  static var previews: some View {
    StatisticsView(stats: GameStatistics(gameRecord: ""))
  }
}
