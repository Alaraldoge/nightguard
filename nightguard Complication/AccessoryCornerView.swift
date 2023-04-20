//
//  AccessoryCircularView.swift
//  nightguard Widget Extension
//
//  Created by Dirk Hermanns on 07.04.23.
//  Copyright © 2023 private. All rights reserved.
//

import Foundation
import SwiftUI
import WidgetKit

struct AccessoryCornerView : View {
    
    var entry: NightscoutDataEntry
    
    var body: some View {
        Text("\(entry.bgdeltaArrow)")
            .font(.system(size: 20))
            .foregroundColor(
                Color(entry.bgdeltaColor))
        .widgetLabel {
            Text("\(entry.sgv)" +
                 "\(entry.bgdeltaString) " +
                 "\(calculateAgeInMinutes(from: entry.time))m")
                    .foregroundColor(
                        Color(entry.sgvColor))
        }
        .widgetAccentable(true)
        .unredacted()
    }
}


