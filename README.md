# Homebrew Tap for Reel

Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection.

## Install

```bash
brew install getreeldev/tap/reel
```

## Usage

```bash
reel export sbom --image nginx:latest -o sbom.json
reel export sarif --image nginx:latest -o results.sarif
reel export cbom --image nginx:latest -o cbom.json
reel export malware --image nginx:latest -o malware.json
```

For malware scanning, ClamAV must be installed separately:

```bash
brew install clamav
```

Full documentation at [getreel.dev/docs](https://getreel.dev/docs).
