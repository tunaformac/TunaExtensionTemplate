# Tuna Extension Starter

Use this repository as a template for a new Tuna extension. It contains one extension declaration,
one catalog, the released TunaKit binary package, and one command for the whole development loop.

## Start

1. Click **Use this template** on GitHub and clone your new repository.
2. Replace `TemplatePlugin` and `TemplatePluginExtension` with your extension name.
3. Change `PRODUCT_BUNDLE_IDENTIFIER` from `com.example.TemplatePlugin` to your own identifier.
4. Open `TemplatePlugin.xcodeproj`, select your development team under Signing & Capabilities, and
   edit the sample declaration and catalog.
5. Build and install it:

```bash
./scripts/tuna-extension install --restart
```

The command infers the only project and scheme in this repository. Other useful commands are:

```bash
./scripts/tuna-extension build
./scripts/tuna-extension logs
./scripts/tuna-extension logs --last 20m
./scripts/tuna-extension package
```

For CI, set `TUNA_DEVELOPMENT_TEAM` instead of changing the Xcode signing setting.

Read the extension development guide at https://tunaformac.com/docs/extension-development.
