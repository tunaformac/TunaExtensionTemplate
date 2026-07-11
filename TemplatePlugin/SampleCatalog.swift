import AppKit
import Foundation
import TunaKit

@MainActor
final class SampleCatalog: NSObject, Catalog {
  let identifier: String
  let name: String
  private(set) var objects: [CatalogItem] = []

  required init(definition: CatalogDefinition) {
    self.identifier = definition.identifier
    self.name = definition.name
    super.init()
  }

  func scan() async {
    objects = [CatalogItem(id: "hello-tuna", title: "Hello Tuna", type: .entity)]
    reportScanFinished()
  }
}
