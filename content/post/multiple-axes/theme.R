
# Custom blog theme for ggplot2 ===================================================================

require(ggplot2)

# Fonts -------------------------------------------------------------------------------------------

#install.packages("extrafontdb")
require(extrafont)
require(viridis)

cividis(5)

#extrafont::fonttable()
#font_import("C:/Windows/Fonts/", pattern = "Roboto")
#y
loadfonts(device="win")

# Colours (based on blog) -------------------------------------------------------------------------

#old_palette <- list("dark_coral" = "#d05441",
#                     "sea_serpent" = "#41bdd0",
#                     "bubbles" = "#e7f7f9",
#                     "gainsboro" = "#d2e1e3",
#                     #"dark_purple" = "#2b193d",
#                     #"mellow_apricot" = "#f0b67f",
#                     "japanese_indigo" = "#233D4D",
#                     "sunglow" = "fcca46",
#                     "ghost_white" = "#f8f8f8")

#old_palette2 <- list("sunset_orange" = "#d05441",
#                    "mellow_apricot" = "#f0b67f",
#                    "pastel_grey" = "#d6d1b1",
#                    "keppel" = "#3ab795",
#                    "isabelline" = "#f0f0f0",
#                    "ghost_white" = "#f8f8f8")

exd_palette <- list("yankees_blue" = "#13293d",
                    "mellow_apricot" = "#f0b67f",
                    #"keppel" = "#3ab795",
                    "zomp" = "#35a788",
                    #"illuminating_emerald" = "#30967a",
                    "isabelline" = "#f0f0f0",
                    "ghost_white" = "#f8f8f8")

# Default colour/fill colours ---------------------------------------------------------------------


scale_colour_continuous <- function(...) scale_colour_gradient(
  low = exd_palette$keppel,
  high = exd_palette$yankees_blue,
  na.value = exd_palette$mellow_apricot, 
  ...)

scale_fill_continuous <- function(...) scale_fill_gradient(
  low = exd_palette$keppel,
  high = exd_palette$yankees_blue,
  na.value = exd_palette$mellow_apricot, 
  ...)

# THEME ===========================================================================================

require(ggplot2)
#require(scales)

theme_exd <- theme_grey(base_size = 12,
                        base_family = "Roboto") +
  theme(
    # Plot in general
    plot.title = element_text(face = "bold", size = 18, colour = exd_palette$yankees_blue),
    plot.subtitle = element_text(size = 16, colour = "grey60"),
    plot.caption = element_text(size = 12, colour = "grey60"),
    plot.background = element_rect(fill = "transparent", colour = NA), # bg of the full image/plot
    plot.tag = element_text(margin = margin(l = 12), face = "bold", colour = exd_palette$yankees_blue, 
                            hjust = 0.5, vjust = 0.5),
    plot.tag.position = c(0.93, 0.98),
    # Facets
    strip.background = element_blank(),
    strip.text = element_text(face = "bold", size = 14),
    # Panel
    panel.border = element_rect(fill = NA, colour = "grey60", size = 1.2),
    panel.background = element_rect(fill = exd_palette$ghost_white, colour = NA), 
    panel.grid.major.x = element_blank(),
    panel.grid.minor.x = element_blank(),
    panel.grid.major.y = element_line(colour = "grey80", size = 0.5),
    panel.grid.minor.y = element_line(colour = "grey80", size = 0.2),
    # Axes
    axis.title = element_text(size = 16, colour = "grey60", face = "bold"),
    axis.ticks.y = element_line("grey60", size = 0.7),
    axis.ticks.x = element_line("grey60", size = 0.7),
    axis.text = element_text(size = 14, colour = "grey60"),
    # Legend
    legend.position = "bottom",
    legend.key = element_rect(fill = "transparent"),
    legend.background = element_blank(),
    legend.box.background = element_blank(),
    legend.title = element_text(size = 16, colour = "grey60", face = "bold"),
    legend.text = element_text(size = 12, colour = "grey60"))

# example

#p <- ggplot(data = cars, aes(x = speed, y = dist)) +
#  geom_col(aes(fill = speed), size = 3) +
#  labs(title = "Title here", 
#       subtitle = "Subtitle here.", 
#       tag = "Econ x Data", 
#       caption = "Caption here.") +
#  theme_exd

#p



