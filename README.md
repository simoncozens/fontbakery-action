# Fontbakery Action

Test your fonts using the [fontbakery](https://github.com/googlefonts/fontbakery) QA tool.

## Example

Create a `.github/workflows/fontbakery.yml` with the following contents:

```
on: [push]

jobs:
  fontbakery:
    runs-on: ubuntu-latest
    name: Check the fonts with fontbakery
    steps:
        - uses: actions/checkout@v2
        - uses: simoncozens/fontbakery-action
```

If you want to save the reports created by fontbakery as artifacts to be downloaded from the GitHub actions page, add the following step:

```
        - uses: actions/upload-artifact@v2
          if: always()
          with:
            name: Fontbakery reports
            path: fontbakery.*
```

(The `if: always()` ensures that the reports are uploaded even if fontbakery exits with a failure status.)

## Inputs

You can further customise the action using the following inputs:

### `directories`

A list of directories to inspect for font files. Default: `.` (the root of the repository).

### `profile`

The fontbakery profile to check. Default: `googlefonts`.

### `output_formats`

The output files to produce. Default: `md,html`. If this string contains `md`, a Markdown report is saved in the file `fontbakery.md`; if it contains `html`, a HTML report is saved in the file `fontbakery.html`.
