import SwiftUI

struct EmptyBoxView: View {
  var size: Double

  var body: some View {
    RoundedRectangle(cornerRadius: size / 5.0)
      .stroke(Color(UIColor.label))
      .frame(width: size, height: size)
  }
}

struct EmptyBoxView_Previews: PreviewProvider {
  static var previews: some View {
    EmptyBoxView(size: 50.0)
  }
}
