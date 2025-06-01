set.seed(123)
n <- 20  # 설비 수
remaining_life <- sample(1:10, n, replace = TRUE)
risk_score <- 10 - remaining_life

equipment_data <- data.frame(
  설비번호 = paste0("E", 1:n),
  잔여수명 = remaining_life,
  위험도 = risk_score
)

print(equipment_data)


library(lpSolve)

objective <- equipment_data$위험도
constraint_matrix <- matrix(1, nrow = 1, ncol = n)
constraint_dir <- "<="
constraint_rhs <- 5

result <- lp("max", objective,
             constraint_matrix,
             constraint_dir,
             constraint_rhs,
             all.bin = TRUE)

solution <- result$solution
equipment_data$수리여부 <- solution

# 최적해 확인
print(equipment_data[equipment_data$수리여부 == 1, ])

# 총 위험도
cat("총 위험도:", sum(equipment_data$위험도 * equipment_data$수리여부))


library(ggplot2)

ggplot(equipment_data, aes(x = 설비번호, y = 위험도,
                           fill = factor(수리여부))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("gray", "red"),
                    name = "수리 여부",
                    labels = c("미수리", "수리됨")) +
  labs(title = "설비별 위험도 및 수리여부",
       x = "설비번호", y = "위험도") +
  theme_minimal() +
  theme(text = element_text(family = "Apple SD Gothic Neo"))
