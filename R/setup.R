library(tidyverse)
library(icons)
library(countdown)

# workaround to get htmlwidgets working
options(htmltools.preserve.raw = FALSE)

# defining some icons from the package {icon}
icon_download   <- fontawesome("download", style = "solid")
icon_edit       <- fontawesome("edit", style = "solid")
icon_github     <- simple_icons("github")
icon_thumbs_up  <- fontawesome("thumbs-up", style = "solid") 
icon_js         <- simple_icons("javascript") 
icon_md         <- simple_icons("markdown")
icon_css3       <- simple_icons("css3")
icon_r          <- simple_icons("r") 
icon_html5      <- simple_icons("html5")
icon_keyboard   <- fontawesome("keyboard", style = "solid")
icon_images     <- fontawesome("images", style = "solid")
icon_columns    <- fontawesome("columns", style = "solid")
icon_palette    <- fontawesome("palette", style = "solid")
icon_code       <- fontawesome("code")

# setting up exts custom colors

colorexts <- list(
  red    =  "#cf0000",
  grey   =  "#3F3C3A",
  marine =  "#00A79F",
  oil    =  "#425556",
  white  =  "#FFFFFF"
)

# countdown functions with custom palette and easier positioning
countdown_exts<- function(minutes, 
                          seconds, ...){
  countdown(
    minutes = minutes, 
    seconds = seconds,
    color_background          = colorexts$white, 
    color_border              = colorexts$grey,
    color_text                = colorexts$grey,
    color_running_background  = colorexts$marine,
    color_running_text        = colorexts$white,
    color_finished_background = colorexts$red,
    color_finished_text       = colorexts$white, ... )
}
