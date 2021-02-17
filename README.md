`exts_xaringan`
================

## Create a new presentation

To create a new presentation, you can

-   `clone` this repo and modify the [`index.Rmd` file](index.Rmd) to
    suit your purposes
-   create a new `{xaringan}` presentation and set the following options
    in the `output` option in the `yaml`, this refers to the

``` yaml
output:
  xaringan::moon_reader:
    css: ["default", "https://dfloresag.github.io/exts_xaringan/css/exts.css", "https://dfloresag.github.io/exts_xaringan/css/exts-fonts.css"]
    lib_dir: libs
    nature:
      highlightStyle: github
      highlightLines: true
      countIncrementalSlides: false
      ratio: '16:9' # alternatives '16:9' or '4:3' or others e.g. 13:9
      navigation:
        scroll: false # disable slide transitions by scrolling
```

## Using `htmlwidgets`

To use html widgets you need to include a chunk that sets the options
for `htmltools`.

    options(htmltools.preserve.raw = FALSE)

This is due to incompatibilities between the JavaScript markdown library
used by `{xaringan}` and how `rmarkdown` displays html code. Check for
example this [Stack Overflow
Thread](https://stackoverflow.com/questions/65766516/xaringan-presentation-not-displaying-html-widgets-even-when-knitting-provided-t).

## Create your Slides

To have an idea of the available classes, check:

-   A [presentation
    example](https://dfloresag.github.io/exts_xaringan/index.html#1)
-   The [source file](index.Rmd) of the presentation example.
