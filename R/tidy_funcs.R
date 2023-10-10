recode_and_factor <- function(df, relabel_outcomes, covar_str) {
    covar <- str2lang(covar_str)
    df %>% mutate(!!covar := recode(!!covar, !!!relabel_outcomes)) %>%
        mutate(!!covar := factor(!!covar, levels = relabel_outcomes))
}

factor_only <- function(df, relabel_outcomes, covar_str) {
    covar <- str2lang(covar_str)
    df %>% mutate(!!covar := factor(!!covar, levels = relabel_outcomes))
}