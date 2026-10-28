df <- read.table("Dane/breast-cancer.data", sep=",", na.strings="?")
colnames(df) <- c("class",
                  "age",
                  "menopause",
                  "tumor_size",
                  "inv_nodes",
                  "node_caps",
                  "deg_malig",
                  "breast",
                  "breast_quad",
                  "irradiat")
head(df)

nrow(df)-nrow(na.omit(df))
# 9 wierszy zawiera NA, 9/nrow(df) = 3.15%
# Według breast-cancer.names wystepuje ich:
# - 8 w zmiennej node_caps,
# - 1 w zmiennej breast_quad.
df <- na.omit(df)

df$class <- factor(df$class, ordered=FALSE)
df$age <- ordered(df$age, levels=c("20-29",
                                   "30-39",
                                   "40-49",
                                   "50-59",
                                   "60-69",
                                   "70-79"))
df$menopause <- factor(df$menopause, ordered=FALSE)
df$tumor_size <- ordered(df$tumor_size, levels=c("0-4",
                                                 "5-9",
                                                 "10-14",
                                                 "15-19",
                                                 "20-24",
                                                 "25-29",
                                                 "30-34",
                                                 "35-39",
                                                 "40-44",
                                                 "45-49",
                                                 "50-54",
                                                 "55-59"))
df$inv_nodes <- ordered(df$inv_nodes, levels=c("0-2",
                                               "3-5",
                                               "6-8",
                                               "9-11",
                                               "12-14",
                                               "15-17",
                                               "24-26"))
df$node_caps <- factor(df$node_caps, ordered=FALSE)
df$deg_malig <- ordered(df$deg_malig, levels=c(1, 2, 3))
df$breast <- factor(df$breast, ordered=FALSE)
df$breast_quad <- factor(df$breast_quad, ordered=FALSE)
df$irradiat <- factor(df$irradiat, ordered=FALSE)