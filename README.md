# Tuna Extension Starter

> [!IMPORTANT]
> This repository describes the extension platform planned for Tuna 0.79. Tuna 0.79 has not been
> released yet; the current public app is Tuna 0.78, so treat the instructions, compatibility
> versions, and examples below as a release preview.

Use this repository as a template for a new Tuna extension. It contains one extension declaration,
one catalog, the released TunaKit binary package, and one command-line tool for local development.

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

The sample declaration sets explicit minimum Tuna and TunaKit versions. Change both to the oldest
versions you actually test before distributing your extension; packaging fails if either is absent.
For a one-off package, override the packaged compatibility values without editing the declaration:

```bash
MIN_TUNA=0.79 MIN_TUNAKIT=1.12.0 MIN_MACOS=15.0 \
  ./scripts/tuna-extension package
```

Packaging requires a signed Release build. For an interactive setup, selecting your development
team in Xcode is enough. For a non-interactive build, pass the team and the SHA-1 of an installed
Apple Development identity:

```bash
security find-identity -v -p codesigning

TUNA_DEVELOPMENT_TEAM=YOURTEAMID \
TUNA_CODE_SIGN_IDENTITY=IDENTITY_SHA1 \
  ./scripts/tuna-extension package
```

The package command reads the Swift declaration through Tuna. It finds Tuna in `/Applications` or
`~/Applications`; when testing against another build, set `TUNA_BINARY` to that executable.

The public store is curated during the beta. This starter creates the package for review but does
not include store upload or release commands.

Read the extension development guide at https://tunaformac.com/docs/extension-development.

## License

This starter is available under the [MIT License](LICENSE).
