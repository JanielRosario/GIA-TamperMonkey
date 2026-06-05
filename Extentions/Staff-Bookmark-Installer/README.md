# Agency Bookmark Installer

Internal Chrome and Microsoft Edge extension for adding agency and position bookmark folders.

## Load for testing

1. Open `chrome://extensions` or `edge://extensions`.
2. Enable Developer mode.
3. Choose Load unpacked.
4. Select this folder:

```text
Extentions/Staff-Bookmark-Installer
```

## User flow

1. Click the extension button.
2. Select agency.
3. Select position.
4. Click Install bookmarks.

On first install, the same setup page opens automatically in a browser tab.

The extension downloads the latest config from:

```text
https://raw.githubusercontent.com/JanielRosario/Gia-Extensions/main/Bookmark%20Installer/bookmarks-config.json
```

## Safety behavior

- Creates configured folders and bookmarks directly on the bookmarks bar.
- Does not delete bookmarks.
- Does not rewrite manually added bookmarks.
- Skips duplicate URLs by default if the URL already exists anywhere in the browser.
- Ignores duplicate matches inside the old `GWPC Staff` test folder so corrected direct installs can still add bookmarks to the bar.

## Manager

The manager page lives at:

```text
Bookmark Installer/manager.html
```

Managers use that page to import exported bookmark `.html` files, manually add bookmarks/folders, and save `bookmarks-config.json` back to GitHub.

## Enterprise installer

The enterprise installer files live in:

```text
deployment/
```

Use `deployment/install-managed-extension.bat` as the source batch installer. After the GitHub Pages deployment publishes the signed CRX/update manifest, the hosted installer URL is:

```text
https://JanielRosario.github.io/Gia-Extensions/Extentions/Staff-Bookmark-Installer/install-managed-extension.bat
```
