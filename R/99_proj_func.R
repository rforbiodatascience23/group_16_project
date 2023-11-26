dens <- function(data, variable) {
  ggplot(data = data,
         aes(x = !!sym(variable),
             color = diagnose,
             fill = diagnose)) +
    geom_density(alpha = 0.4) +
    scale_fill_manual(values = c("darkgreen", "red")) +
    scale_color_manual(values = c("darkgreen", "red")) +
    theme_minimal()
}


bar <- function(data, variable) {
  ggplot(data = data,
         aes(y = !!sym(variable),
             color = diagnose,
             fill = diagnose)) +
    geom_bar(alpha = 0.4, position = "fill") +
    scale_fill_manual(values = c("darkgreen", "red")) +
    scale_color_manual(values = c("darkgreen", "red")) +
    theme(axis.title.x = element_blank(),
          axis.text.y = element_text(angle = 20, hjust = 1)) +
    theme_minimal()
}