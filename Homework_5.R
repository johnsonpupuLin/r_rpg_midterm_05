
# 1. 使用 %>% 簡化這段程式
#this_year <- as.numeric(format(Sys.Date(), '%Y'))
#birth_year <- this_year - straw_hat_df$age
#birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
#straw_hat_df$birth_date <- as.Date(birth_date_chr)

straw_hat_df$birth_date <- Sys.Date() %>%
  format(format = '%Y') %>%
  as.numeric () %>%
  `-` (straw_hat_df$age) %>%
  paste(straw_hat_df$birthday, sep = "-") %>%
  as.Date()


# 2. 計算 BMI 將 bmi 變數加入 data frame：
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

heights_and_weights <- heights_and_weights %>%
  mutate(heights_meter = heights/100) %>%
  mutate(BMI = weights/((heights/100)^2))

View(heights_and_weights)

