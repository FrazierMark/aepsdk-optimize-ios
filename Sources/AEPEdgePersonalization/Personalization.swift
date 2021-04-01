/*
 Copyright 2021 Adobe. All rights reserved.
 This file is licensed to you under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License. You may obtain a copy
 of the License at http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software distributed under
 the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
 OF ANY KIND, either express or implied. See the License for the specific language
 governing permissions and limitations under the License.
 */

import AEPCore

@objc(AEPMobileEdgePersonalization)
public class Personalization: NSObject, Extension {
    // MARK: Extension

    public let name = PersonalizationConstants.EXTENSION_NAME
    public let friendlyName = PersonalizationConstants.FRIENDLY_NAME
    public static let extensionVersion = PersonalizationConstants.EXTENSION_VERSION
    public let metadata: [String: String]? = nil
    public let runtime: ExtensionRuntime

    public required init?(runtime: ExtensionRuntime) {
        self.runtime = runtime
        super.init()
    }

    public func onRegistered() {}

    public func onUnregistered() {}

    public func readyForEvent(_: Event) -> Bool {
        true
    }
}
