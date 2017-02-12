Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Juliaty
date: 12 February 2017
autosize: true

About
========================================================

- This was built as part of "Developing Data Product" Course
- The course is part of the "Data Science specialization"
- This peer assessed assignment has two parts. 
  - First, create a Shiny application and deploy it on Rstudio's servers. 
  - Second, use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about the application. In this case I use Rstudio Presenter.

Data
========================================================

Data was taken from Iris dataset which is part of datasets package.

This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.

```r
summary(iris)
```

```
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50  
                
                
                
```

Application
========================================================

The application will display the relationship between Sepal.Length or Sepal.Width with Petal.Length or Petal.Width, based on the selected species or all species.
![plot of chunk unnamed-chunk-2](MyRPresentation-figure/unnamed-chunk-2-1.png)

Source
========================================================

- The application can be found from this link: <https://juliaty.shinyapps.io/myshiny/>
- The source code can be found from this link: <https://github.com/juliaty/DevelopingDataProduct>
  
