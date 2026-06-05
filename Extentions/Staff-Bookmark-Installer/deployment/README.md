# Enterprise Deployment

This extension can be installed with Chrome and Microsoft Edge enterprise policy from a self-hosted CRX.

## GitHub secret

Add this repository secret before using the hosted installer:

```text
AGENCY_BOOKMARK_INSTALLER_EXTENSION_PEM_BASE64
```

The value must be the base64 text of the extension signing `.pem` file. Keep that `.pem` private because it controls the extension ID and future updates.

From PowerShell:

```powershell
[Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\path\to\agency-bookmark-installer.pem"))
```

## Publish

After the secret exists, push a change under `Extentions/Staff-Bookmark-Installer/` or manually run the GitHub Actions workflow. The workflow publishes these files to GitHub Pages:

- `update.xml`
- `agency-bookmark-installer-<version>.crx`
- `extension-id.txt`
- `install-managed-extension.ps1`
- `install-managed-extension.bat`

## Install

Download or run this batch file as Administrator:

```text
https://JanielRosario.github.io/Gia-Extensions/Extentions/Staff-Bookmark-Installer/install-managed-extension.bat
```

The source copy of the batch file is also committed here:

```text
Extentions/Staff-Bookmark-Installer/deployment/install-managed-extension.bat
```

The installer writes Chrome and Edge force-install policy entries. Restart Chrome/Edge, or open `chrome://policy` / `edge://policy` and reload policies.

## Updates

1. Bump `manifest.json` version.
2. Push to `main`.
3. The workflow publishes a new CRX and update manifest.
4. Chrome/Edge updates managed clients automatically.
