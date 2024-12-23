import SwiftUI

struct ShowResultView: View {
  var game: GuessingGame
  let yellowBox = "\u{1F7E8}"
  let greenBox = "\u{1F7E9}"
  let grayBox = "\u{2B1B}"

  var body: some View {
    Text("Placeholder")
  }
}

struct ShowResultView_Previews: PreviewProvider {
  static var previews: some View {
    ShowResultView(game: GuessingGame())
  }
}
