# Create multiple reports using an Rmd template
# and annual data files.

# This example is taken from the R Markdown Cookbook
# https://bookdown.org/yihui/rmarkdown-cookbook/rmarkdown-render.html


yrbssFlist <- list.files(path = "./data/")
yrbssFlist

for (fp in yrbssFlist) {
  rmarkdown::render(
    'report_template.Rmd', output_file = paste0(fp, '.html')
  )
}
