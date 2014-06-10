---
title       : Developing Data Products
subtitle    : Coursera
author      : Alexander Leznar
job         : Student
framework   : io2012
logo		: coursera_logo.png # Automatically searches through the img dir
highlighter : highlight.js
hitheme     : tomorrow
widgets     : [mathjax, bootstrap, quiz, shiny, interactive]
mode        : selfcontained
---

## Introduction

Slidify is simply fanatastic? Easy to use and clear!
As long as you don't forget to include:

<!---Add {R} after the backticks to evaluate the code (with R of course) --->
```
library(shiny)
slidify("test.Rmd")
```

This code can be found on my GitHub repo: https://github.com/xeggsy/Coursera-DDP
![GitHub logo](./assets/img/blacktocat.png)

--- .class # Special style through CSS

## Related Work

**Big** thanks to Vaidyanathan Ramnath for creating Slidify!

---

## Description

Much to be discussed here:

- The what?
- The why?
- The how?

--- &radio

## A quick question

What is $1 + 1$?

1. 1
2. _2_
3. 3
4. None of the above

*** .hint
Pick answer 1.

*** .explanation
Required knowledge: expert math

---

## Results

Inconclusive! 
> According to the analysis by me!

  File   | Load speed
-------- | ----------
test.R   | 40s

---

## Conclusion

Ideas are waiting to be confirmed.

--- &interactive

## Interactive Console

<textarea class='interactive' id='interactive{{slide.num}}' data-cell='{{slide.num}}' data-results='asis' style='display:none'>require(googleVis)
M1 <- gvisMotionChart(Fruits, idvar = 'Fruit', timevar = 'Year')
print(M1, tag = 'chart')</textarea>
