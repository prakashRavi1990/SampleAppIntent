//
//  AppIntent.swift
//  Sample to run
//
//  Created by Prakash on 22/07/22.
//

import Foundation
import AppIntents
import SwiftUI

struct SampleAppIntent: AppIntent {
    
    typealias SummaryContent = Summary

    
    static let title: LocalizedStringResource = "Tell a joke"
    
    static var openAppWhenRun: Bool = false
    
    func perform() async throws -> some IntentPerformResult {
        return .finished(dialog: IntentDialog(stringLiteral: AppSetting.shared.userName ?? "Shared value is nil"), view: SuccessView())
    }
}

struct MeditationShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(intent: SampleAppIntent(),
                    phrases: ["Tell a joke"])
    }
}

struct SuccessView: View {
    var body: some View {
        Spacer()
        Text(AppSetting.shared.userName ?? "Shared value is nil")
        Spacer()
    }
}


class AppSetting: ObservableObject {
    static let shared = AppSetting()
    private init() {}
    
    var userName: String?
}
