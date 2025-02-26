import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0.0
    @State private var amplitude = 0.0

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Image("curry")
                .resizable()
                .scaledToFill()
                .frame(width:340,height:340)
                .layerEffect(ShaderLibrary.fractalGlassEffect(.boundingRect, .float(progress), .float(amplitude)),maxSampleOffset:.zero)

            VStack{
                Spacer()
                HStack{
                    Text("p: \(progress, specifier: "%.2f")")
                        .font(.system(size:14, design: .monospaced))
                        .foregroundStyle(.white)
                    Slider(value:$progress, in:0...2)
                        .tint(.white)

                }
                HStack{
                    Text("a: \(amplitude, specifier: "%.2f")")
                        .font(.system(size:14, design: .monospaced))
                        .foregroundStyle(.white)
                    Slider(value:$amplitude, in:0...2)
                        .tint(.white)

                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
