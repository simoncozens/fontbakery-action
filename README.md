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

## Inputs

You can further customise the action using the following inputs:

### `directories`

A list of directories to inspect for font files. Default: `.` (the root of the repository).

### `profile`

The fontbakery profile to check. Default: `googlefonts`.

### `output_formats`

The output files to produce. Default: `md,html`. If this string contains `md`, a Markdown report is saved in the file `fontbakery.md`; if it contains `html`, a HTML report is saved in the file `fontbakery.html`.
