//
//  ScanView.swift
//  ak
//
//  Created by Herman Nordin on 2021-12-21.
//

import SwiftUI
import CarBode
import AVFoundation //import to access barcode types you want to scan

struct ScanView: View {
    var body: some View {
        
        VStack{
            CBScanner(
                supportBarcode: .constant([.ean13, .ean8, .code128]), //Set type of barcode you want to scan
                scanInterval: .constant(5.0) //Event will trigger every 5 seconds
            ){
                //When the scanner found a barcode
                print("BarCodeType =",$0.type.rawValue, "Value =",$0.value)
                //getData(id: $0.value)
                getData(id: "04963406")
            }
            onDraw: {
                let lineWidth = 2
                let lineColor = UIColor.red
                let fillColor = UIColor(red: 0, green: 1, blue: 0.2, alpha: 0.4)
                //Draw box
                $0.draw(lineWidth: CGFloat(lineWidth), lineColor: lineColor, fillColor: fillColor)
            }
            
        }
        .frame(width: 300.0, height: 300.0)
        
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}

func toggleTorch(on: Bool) {
    guard let device = AVCaptureDevice.default(for: .video) else { return }
    
    if device.hasTorch {
        do {
            try device.lockForConfiguration()
            
            if on == true {
                device.torchMode = .on
            } else {
                device.torchMode = .off
            }
            
            device.unlockForConfiguration()
        } catch {
            print("Torch could not be used")
        }
    } else {
        print("Torch is not available")
    }
}
