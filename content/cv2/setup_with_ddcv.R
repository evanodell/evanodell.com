library(datadrivencv)
library(here)
use_datadriven_cv(
  full_name = "Evan Odell",
  data_location = "https://docs.google.com/spreadsheets/d/1VtkzCbTrDlVtoNdpSmAyqZl6R-CnLfilRcbNd_v5k2I/edit?usp=sharing",
  pdf_location = "https://github.com/evanodell/cv/raw/master/evanodell_cv.pdf",
  html_location = "evanodell.com/cv/",
  source_location = "https://github.com/evanodell/cv",
  output_dir = here(),
  open_files = FALSE
)
