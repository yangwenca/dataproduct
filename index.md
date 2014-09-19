---
title       : Son's Height Prediction App
subtitle    : 
author      : Yang Wen
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## App Introduction
1. The App is designed to predict a son's height from his father's height.
2. The App built a regression model from the data set to make prediction.
3. The data set contains 1078 measurements of a father's height and his son's height.
4. The App shows the dataset and regression model to help user understanding the algorithm.


--- .class #2 

## Regression Model

1. X is the data set for father's height, and Y is the data for son's height.
2. The regression model is $$ Y = \hat \beta_1 * X + \hat \beta_0 $$
3. The line passes throught the point ($\bar{X}$, $\bar{Y}$) (mean of father's height, mean of son's height)
4. The equation to calculate $\hat \beta_1$ and $\hat \beta_0$
$$\hat \beta_1 = cor(Y,X) * \frac{sd(Y)}{sd(X)}$$
$$\hat \beta_0 = \bar{Y} - \hat \beta_1 * \bar{X}$$


--- .class #3

## Parameter Calculation



Important parameters are shown: $\bar{X}$, $\bar{Y}$, $\hat \beta_1$, and $\hat \beta_0$

```r
data(father.son)
y<-father.son$sheight
x<-father.son$fheight
beta1 <- cor(y,x)*sd(y)/sd(x)
beta0 <- mean(y)-beta1*mean(x)
c(mean(x), mean(y), beta1, beta0)
```

```
## [1] 67.6871 68.6841  0.5141 33.8866
```

--- .class #4
## Data Set with Regression Model

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3.png) 
