`exts_xaringan`
================

This repo contains a `{xaringan}` presentation style for the EPFL
Extension School. To take advantage of this style, you have two options:

-   create a new `{xaringan}` presentation from scratch and access the
    style sheets and assets remotely, or
-   clone the repo and modify the template locally.

## Create a new presentation

To create a new `{xaringan}` presentation from scratch,

-   On the menu bar select: `File` -&gt; `New File` -&gt; R Markdown.
-   Select the option `From Template`
-   Among the templates: `Ninja Presentation {xaringan}`.

This will create a default `{xaringan}` presention `.Rmd` file. To adapt
it to work with the `exts_xaringan` style sheets, modify the `output`
option in the `yaml` section of the file as follows:

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

For a demo of the available classes, check the [presentation
example](https://dfloresag.github.io/exts_xaringan/index.html#1), and to
make the `htmlwidgets` work, take a look the last section of this
README.

## Use of the template

If you choose to clone the repo, there are a couple of details you have
to take into account, the installation and use of additional packages.

### Using additional packages

The template uses a couple of packages that are not listed on CRAN,
namely: [`{icon}`](https://github.com/mitchelloharawild/icon) and
[`{countdown}`](https://github.com/gadenbuie/countdown) both available
in their respective Github repositiories, hence ready to install with
`devtools::install_github()`.

``` r
# Install {icon}
devtools::install_github("https://github.com/mitchelloharawild/icon")

# Install {countdown}
devtools::install_github("https://github.com/gadenbuie/countdown")
```

#### Using `{icon}`

The `{icon}` package requires the download of icon libraries. The
template uses the libraries `fontawesome`, `simple_icons` and
`academicons`. These libraries can be installed locally with the
dedicated `download_` functions:

``` r
icon::download_fontawesome()
icon::download_simple_icons()
icon::download_academicons()
```

## A word on `{htmlwidgets}`

To use html widgets you need to include a chunk that sets the options
for `htmltools`.

    options(htmltools.preserve.raw = FALSE)

This is due to incompatibilities between the JavaScript markdown library
used by `{xaringan}` and how `rmarkdown` displays html code. Check for
example this [Stack Overflow
Thread](https://stackoverflow.com/questions/65766516/xaringan-presentation-not-displaying-html-widgets-even-when-knitting-provided-t).

<!-- The [source file](index.Rmd) of the presentation example.  -->
