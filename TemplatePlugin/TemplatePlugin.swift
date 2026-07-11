import Foundation
import TunaKit

@objc(TemplatePluginExtension)
public final class TemplatePluginExtension: Extension {
  public override var declaration: ExtensionDeclaration? {
    ExtensionDeclaration(
      metadata: ExtensionMetadata(
        displayName: "Sample Extension",
        author: "Your Name",
        description: "Describe what your extension provides.",
        iconName: "puzzlepiece.extension"
      ),
      compatibility: ExtensionDeclarationCompatibility(
        minTuna: "0.78",
        minTunaKit: "1.11.0"
      ),
      catalogs: [
        CatalogDeclaration(
          id: "sample", type: SampleCatalog.self, name: "Sample Catalog", enabledByDefault: true)
      ]
    )
  }
}
