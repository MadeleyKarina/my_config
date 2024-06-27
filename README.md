# Installer Script:
* Execute `./config.sh`

# VS Code Extensions:

## Themes/Color
* [Just Black](https://marketplace.visualstudio.com/items?itemName=nur.just-black)

## Theme / Editor Experience
* [FontSize ShortCuts](https://marketplace.visualstudio.com/items?itemName=fosshaas.fontsize-shortcuts)
    * Change the font size with keyboard shortcuts.
* [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
    * Nice / colorful icons for many different file types
* [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
    * Automatically format javascript, JSON, CSS, Sass
* [Pretty TypeScript Errors](https://marketplace.visualstudio.com/items?itemName=yoavbls.pretty-ts-errors)
    * Makes TS errors more human readable.
* [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
    * Spell check markdown, comments and variable names.
* Languages and Libraries
 * React
    * [ES7+ React/Redux/React-Native snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)
      * Extensions for React, React-Native and Redux in JS/TS with ES7+ syntax. Customizable. Built-in integration with prettier.
 * Python
    * [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)

# Settings

```json
{
    "workbench.sideBar.location": "right",
    "editor.snippetSuggestions": "top",
    "editor.minimap.enabled": false,
    "editor.linkedEditing": true,
  // THEME
    "editor.semanticHighlighting.enabled": false,
    "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": [
          "keyword.operator",
          "punctuation.separator"
        ],
        "settings": {
          "fontStyle": ""
        }
      },
      {
        "scope": [
          "comment",
          "comment.block"
        ],
        "settings": {
          "fontStyle": "italic",
          "foreground": "#F5F"
        }
      },
      {
        "name": "envKeys",
        "scope": "string.quoted.double.env,source.env,constant.numeric.env",
        "settings": {
          "foreground": "#19354900"
        }
      }
    ]
  },
  "workbench.colorTheme": "Just Black",
  "editor.lineHeight": 0,
  "editor.fontSize": 12,
  "workbench.iconTheme": "vscode-icons",
}
```