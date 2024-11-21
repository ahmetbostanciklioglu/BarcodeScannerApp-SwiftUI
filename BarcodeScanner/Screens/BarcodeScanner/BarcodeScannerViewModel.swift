import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published  var scannedCode = ""
    @State  var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}


