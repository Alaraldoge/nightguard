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

struct AccessoryCircularView : View {
    
    var entry: NightscoutDataEntry
    
    var body: some View {
        Text("\(calculateAgeInMinutes(from: entry.time))m")
        Text("\(entry.sgv)")
            .foregroundColor(Color(entry.sgvColor))
        Text("\(entry.bgdeltaString)")
            .foregroundColor(
                Color(UIColorChanger.getDeltaLabelColor(entry.bgdelta)))
        .widgetAccentable(true)
        .unredacted()
    }
}


