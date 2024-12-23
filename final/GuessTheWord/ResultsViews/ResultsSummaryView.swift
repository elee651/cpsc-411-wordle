import SwiftUI

struct ResultsSummaryView: View {
  @ObservedObject var game: GuessingGame
  @State private var showShare = false

  var body: some View {
    Text("Placeholder")
  }
}

struct ResultsSummaryView_Previews: PreviewProvider {
  static var previews: some View {
    ResultsSummaryView(game: GuessingGame())
  }
}
