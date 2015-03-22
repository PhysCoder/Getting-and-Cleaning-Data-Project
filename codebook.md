# Codebook
==========
This file describes the structure and variables of the tidy dataset file created by `run_analysis.R`. The file was created on 2015-03-22 12:23:34

## Variable list and composition
--------------------------------
* Variables with both XYZ components and mean()/std() components follow the naming pattern: "feature-mean()-X" (6 rows for each variable)
* Variables with only mean()/std() components follow the naming pattern: "feature-mean()" (2 rows for each variable)
* Variables with no other components has 1 row for each variable
* A variable can only belong to a subject or an activity, one and only one of the two is set "NA"  

|Variable name			|XYZ components |mean()/std() components |
|:---------------------:|:-------------:|:----------------------:|
|tBodyAcc				|YES    		|YES					 |
|tGravityAcc       		|YES			|YES					 |
|tBodyAccJerk      		|YES			|YES					 |
|tBodyGyro         		|YES			|YES					 |
|tBodyGyroJerk     		|YES			|YES					 |
|fBodyAcc          		|YES			|YES					 |
|fBodyAccJerk      		|YES			|YES					 |
|fBodyGyro         		|YES			|YES					 |
|tBodyAccMag 			|YES			|YES					 |
|tGravityAccMag 		|YES			|YES					 |
|tBodyAccJerkMag 		|YES			|YES					 |
|tBodyGyroMag 			|YES			|YES					 |
|tBodyGyroJerkMag 		|YES			|YES					 |
|fBodyAccMag 			|NO				|YES					 |
|fBodyBodyAccJerkMag 	|NO				|YES					 |
|fBodyBodyGyroMag 		|NO 			|YES					 |
|fBodyBodyGyroJerkMag 	|NO 			|YES					 |
|subject                |NO 			|NO 					 |
|activity               |NO 			|NO 					 |


## Dataset Structure
---------------------

```r
str(dataset)
```

```
## 'data.frame':	36 obs. of  68 variables:
##  $ tBodyAcc-mean()-X          : num  0.266 0.273 0.273 0.274 0.279 ...
##  $ tBodyAcc-mean()-Y          : num  -0.0183 -0.0191 -0.0179 -0.0148 -0.0155 ...
##  $ tBodyAcc-mean()-Z          : num  -0.108 -0.116 -0.106 -0.108 -0.106 ...
##  $ tBodyAcc-std()-X           : num  -0.546 -0.606 -0.623 -0.605 -0.508 ...
##  $ tBodyAcc-std()-Y           : num  -0.368 -0.429 -0.48 -0.51 -0.403 ...
##  $ tBodyAcc-std()-Z           : num  -0.503 -0.589 -0.654 -0.709 -0.646 ...
##  $ tGravityAcc-mean()-X       : num  0.745 0.661 0.708 0.707 0.698 ...
##  $ tGravityAcc-mean()-Y       : num  -0.0826 -0.1472 -0.0261 0.1126 0.1123 ...
##  $ tGravityAcc-mean()-Z       : num  0.0723 0.1349 0.0481 0.1641 0.0922 ...
##  $ tGravityAcc-std()-X        : num  -0.96 -0.963 -0.966 -0.963 -0.965 ...
##  $ tGravityAcc-std()-Y        : num  -0.951 -0.96 -0.945 -0.941 -0.94 ...
##  $ tGravityAcc-std()-Z        : num  -0.926 -0.945 -0.927 -0.941 -0.942 ...
##  $ tBodyAccJerk-mean()-X      : num  0.0771 0.0785 0.0702 0.0789 0.0841 ...
##  $ tBodyAccJerk-mean()-Y      : num  0.01659 0.00709 0.01447 0.00351 0.00177 ...
##  $ tBodyAccJerk-mean()-Z      : num  -0.009108 0.000756 -0.000527 -0.007374 -0.002954 ...
##  $ tBodyAccJerk-std()-X       : num  -0.525 -0.558 -0.635 -0.632 -0.576 ...
##  $ tBodyAccJerk-std()-Y       : num  -0.47 -0.492 -0.557 -0.584 -0.507 ...
##  $ tBodyAccJerk-std()-Z       : num  -0.717 -0.742 -0.796 -0.843 -0.785 ...
##  $ tBodyGyro-mean()-X         : num  -0.0209 -0.0517 -0.0248 -0.0289 -0.0295 ...
##  $ tBodyGyro-mean()-Y         : num  -0.0881 -0.0568 -0.0744 -0.0787 -0.0774 ...
##  $ tBodyGyro-mean()-Z         : num  0.0863 0.0873 0.0867 0.0957 0.0866 ...
##  $ tBodyGyro-std()-X          : num  -0.687 -0.711 -0.699 -0.701 -0.71 ...
##  $ tBodyGyro-std()-Y          : num  -0.451 -0.723 -0.763 -0.798 -0.706 ...
##  $ tBodyGyro-std()-Z          : num  -0.597 -0.635 -0.709 -0.726 -0.607 ...
##  $ tBodyGyroJerk-mean()-X     : num  -0.0971 -0.0876 -0.0992 -0.1079 -0.1035 ...
##  $ tBodyGyroJerk-mean()-Y     : num  -0.0417 -0.0434 -0.0402 -0.04 -0.0491 ...
##  $ tBodyGyroJerk-mean()-Z     : num  -0.0471 -0.0558 -0.0521 -0.0578 -0.0506 ...
##  $ tBodyGyroJerk-std()-X      : num  -0.638 -0.672 -0.689 -0.724 -0.663 ...
##  $ tBodyGyroJerk-std()-Y      : num  -0.634 -0.784 -0.843 -0.903 -0.774 ...
##  $ tBodyGyroJerk-std()-Z      : num  -0.665 -0.675 -0.743 -0.748 -0.565 ...
##  $ tBodyAccMag-mean()         : num  -0.454 -0.535 -0.563 -0.562 -0.461 ...
##  $ tBodyAccMag-std()          : num  -0.497 -0.553 -0.591 -0.607 -0.522 ...
##  $ tGravityAccMag-mean()      : num  -0.454 -0.535 -0.563 -0.562 -0.461 ...
##  $ tGravityAccMag-std()       : num  -0.497 -0.553 -0.591 -0.607 -0.522 ...
##  $ tBodyAccJerkMag-mean()     : num  -0.545 -0.588 -0.65 -0.656 -0.589 ...
##  $ tBodyAccJerkMag-std()      : num  -0.516 -0.512 -0.608 -0.647 -0.589 ...
##  $ tBodyGyroMag-mean()        : num  -0.475 -0.615 -0.643 -0.656 -0.603 ...
##  $ tBodyGyroMag-std()         : num  -0.5 -0.681 -0.674 -0.707 -0.664 ...
##  $ tBodyGyroJerkMag-mean()    : num  -0.64 -0.747 -0.784 -0.819 -0.707 ...
##  $ tBodyGyroJerkMag-std()     : num  -0.652 -0.74 -0.804 -0.844 -0.734 ...
##  $ fBodyAcc-mean()-X          : num  -0.532 -0.574 -0.626 -0.629 -0.551 ...
##  $ fBodyAcc-mean()-Y          : num  -0.406 -0.433 -0.502 -0.526 -0.44 ...
##  $ fBodyAcc-mean()-Z          : num  -0.596 -0.63 -0.7 -0.755 -0.696 ...
##  $ fBodyAcc-std()-X           : num  -0.553 -0.62 -0.624 -0.598 -0.493 ...
##  $ fBodyAcc-std()-Y           : num  -0.39 -0.465 -0.503 -0.535 -0.422 ...
##  $ fBodyAcc-std()-Z           : num  -0.499 -0.601 -0.657 -0.709 -0.649 ...
##  $ fBodyAccJerk-mean()-X      : num  -0.547 -0.562 -0.646 -0.652 -0.605 ...
##  $ fBodyAccJerk-mean()-Y      : num  -0.507 -0.509 -0.583 -0.602 -0.551 ...
##  $ fBodyAccJerk-mean()-Z      : num  -0.695 -0.716 -0.78 -0.825 -0.769 ...
##  $ fBodyAccJerk-std()-X       : num  -0.544 -0.595 -0.658 -0.645 -0.584 ...
##  $ fBodyAccJerk-std()-Y       : num  -0.466 -0.509 -0.56 -0.594 -0.492 ...
##  $ fBodyAccJerk-std()-Z       : num  -0.738 -0.767 -0.811 -0.861 -0.799 ...
##  $ fBodyGyro-mean()-X         : num  -0.623 -0.639 -0.642 -0.642 -0.632 ...
##  $ fBodyGyro-mean()-Y         : num  -0.505 -0.722 -0.775 -0.832 -0.717 ...
##  $ fBodyGyro-mean()-Z         : num  -0.554 -0.602 -0.671 -0.689 -0.537 ...
##  $ fBodyGyro-std()-X          : num  -0.708 -0.735 -0.719 -0.722 -0.736 ...
##  $ fBodyGyro-std()-Y          : num  -0.43 -0.727 -0.759 -0.783 -0.702 ...
##  $ fBodyGyro-std()-Z          : num  -0.65 -0.683 -0.751 -0.767 -0.669 ...
##  $ fBodyAccMag-mean()         : num  -0.478 -0.515 -0.579 -0.602 -0.529 ...
##  $ fBodyAccMag-std()          : num  -0.59 -0.647 -0.663 -0.673 -0.594 ...
##  $ fBodyBodyAccJerkMag-mean() : num  -0.499 -0.51 -0.605 -0.635 -0.573 ...
##  $ fBodyBodyAccJerkMag-std()  : num  -0.542 -0.519 -0.616 -0.667 -0.613 ...
##  $ fBodyBodyGyroMag-mean()    : num  -0.535 -0.7 -0.717 -0.746 -0.677 ...
##  $ fBodyBodyGyroMag-std()     : num  -0.567 -0.725 -0.704 -0.733 -0.716 ...
##  $ fBodyBodyGyroJerkMag-mean(): num  -0.646 -0.752 -0.81 -0.839 -0.749 ...
##  $ fBodyBodyGyroJerkMag-std() : num  -0.686 -0.744 -0.81 -0.863 -0.736 ...
##  $ subject                    : chr  "1" "2" "3" "4" ...
##  $ activity                   : chr  NA NA NA NA ...
```

## Summary of variables
---------------------

```r
summary(dataset)
```

```
##  tBodyAcc-mean()-X tBodyAcc-mean()-Y  tBodyAcc-mean()-Z tBodyAcc-std()-X 
##  Min.   :0.2623    Min.   :-0.02592   Min.   :-0.1205   Min.   :-0.9844  
##  1st Qu.:0.2720    1st Qu.:-0.01837   1st Qu.:-0.1096   1st Qu.:-0.6520  
##  Median :0.2745    Median :-0.01767   Median :-0.1084   Median :-0.6054  
##  Mean   :0.2743    Mean   :-0.01777   Mean   :-0.1089   Mean   :-0.5972  
##  3rd Qu.:0.2770    3rd Qu.:-0.01671   3rd Qu.:-0.1068   3rd Qu.:-0.5563  
##  Max.   :0.2881    Max.   :-0.01269   Max.   :-0.1010   Max.   : 0.1008  
##  tBodyAcc-std()-Y   tBodyAcc-std()-Z  tGravityAcc-mean()-X
##  Min.   :-0.94351   Min.   :-0.9481   Min.   :-0.3750     
##  1st Qu.:-0.57754   1st Qu.:-0.6839   1st Qu.: 0.6471     
##  Median :-0.51449   Median :-0.6468   Median : 0.6888     
##  Mean   :-0.49906   Mean   :-0.6050   Mean   : 0.6745     
##  3rd Qu.:-0.42240   3rd Qu.:-0.5185   3rd Qu.: 0.7084     
##  Max.   : 0.05955   Max.   :-0.1754   Max.   : 0.9415     
##  tGravityAcc-mean()-Y tGravityAcc-mean()-Z tGravityAcc-std()-X
##  Min.   :-0.2813772   Min.   :-0.16118     Min.   :-0.9880    
##  1st Qu.:-0.0742927   1st Qu.: 0.03392     1st Qu.:-0.9734    
##  Median : 0.0004431   Median : 0.06733     Median :-0.9657    
##  Mean   : 0.0001352   Mean   : 0.08828     Mean   :-0.9649    
##  3rd Qu.: 0.0577918   3rd Qu.: 0.14432     3rd Qu.:-0.9585    
##  Max.   : 0.6222704   Max.   : 0.55561     Max.   :-0.9412    
##  tGravityAcc-std()-Y tGravityAcc-std()-Z tBodyAccJerk-mean()-X
##  Min.   :-0.9725     Min.   :-0.9594     Min.   :0.07017      
##  1st Qu.:-0.9607     1st Qu.:-0.9497     1st Qu.:0.07703      
##  Median :-0.9572     Median :-0.9417     Median :0.07885      
##  Mean   :-0.9541     Mean   :-0.9384     Mean   :0.07904      
##  3rd Qu.:-0.9507     3rd Qu.:-0.9288     3rd Qu.:0.08150      
##  Max.   :-0.9011     Max.   :-0.8807     Max.   :0.08923      
##  tBodyAccJerk-mean()-Y tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X
##  Min.   :0.0004793     Min.   :-0.019672     Min.   :-0.98500    
##  1st Qu.:0.0043199     1st Qu.:-0.007280     1st Qu.:-0.68705    
##  Median :0.0074567     Median :-0.004458     Median :-0.62948    
##  Mean   :0.0078218     Mean   :-0.004772     Mean   :-0.62917    
##  3rd Qu.:0.0112558     3rd Qu.:-0.001335     3rd Qu.:-0.57597    
##  Max.   :0.0200471     Max.   : 0.002703     Max.   :-0.03388    
##  tBodyAccJerk-std()-Y tBodyAccJerk-std()-Z tBodyGyro-mean()-X 
##  Min.   :-0.97388     Min.   :-0.9823      Min.   :-0.084035  
##  1st Qu.:-0.67569     1st Qu.:-0.8040      1st Qu.:-0.045447  
##  Median :-0.60155     Median :-0.7731      Median :-0.027881  
##  Mean   :-0.59752     Mean   :-0.7575      Mean   :-0.031454  
##  3rd Qu.:-0.53697     3rd Qu.:-0.7205      3rd Qu.:-0.018058  
##  Max.   :-0.07367     Max.   :-0.3887      Max.   : 0.006824  
##  tBodyGyro-mean()-Y tBodyGyro-mean()-Z tBodyGyro-std()-X tBodyGyro-std()-Y
##  Min.   :-0.09549   Min.   :0.05989    Min.   :-0.9810   Min.   :-0.9667  
##  1st Qu.:-0.08303   1st Qu.:0.08290    1st Qu.:-0.7609   1st Qu.:-0.7681  
##  Median :-0.07512   Median :0.08727    Median :-0.7103   Median :-0.7072  
##  Mean   :-0.07465   Mean   :0.08816    Mean   :-0.7147   Mean   :-0.6756  
##  3rd Qu.:-0.06779   3rd Qu.:0.09581    3rd Qu.:-0.6815   3rd Qu.:-0.5869  
##  Max.   :-0.04715   Max.   :0.12589    Max.   :-0.3338   Max.   :-0.3396  
##  tBodyGyro-std()-Z tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y
##  Min.   :-0.9635   Min.   :-0.11212       Min.   :-0.05126      
##  1st Qu.:-0.7210   1st Qu.:-0.10388       1st Qu.:-0.04414      
##  Median :-0.6666   Median :-0.09691       Median :-0.04169      
##  Mean   :-0.6455   Mean   :-0.09653       Mean   :-0.04243      
##  3rd Qu.:-0.5980   3rd Qu.:-0.08952       3rd Qu.:-0.04008      
##  Max.   :-0.2371   Max.   :-0.07285       Max.   :-0.03820      
##  tBodyGyroJerk-mean()-Z tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y
##  Min.   :-0.06385       Min.   :-0.9857       Min.   :-0.9865      
##  1st Qu.:-0.05755       1st Qu.:-0.7829       1st Qu.:-0.8554      
##  Median :-0.05500       Median :-0.7262       Median :-0.8051      
##  Mean   :-0.05479       Mean   :-0.7250       Mean   :-0.7810      
##  3rd Qu.:-0.05247       3rd Qu.:-0.6857       3rd Qu.:-0.6945      
##  Max.   :-0.04507       Max.   :-0.3762       Max.   :-0.4659      
##  tBodyGyroJerk-std()-Z tBodyAccMag-mean() tBodyAccMag-std()
##  Min.   :-0.9848       Min.   :-0.9546    Min.   :-0.9465  
##  1st Qu.:-0.7959       1st Qu.:-0.6032    1st Qu.:-0.6398  
##  Median :-0.7489       Median :-0.5390    Median :-0.5897  
##  Mean   :-0.7323       Mean   :-0.5375    Mean   :-0.5809  
##  3rd Qu.:-0.6837       3rd Qu.:-0.5037    3rd Qu.:-0.5509  
##  Max.   :-0.3265       Max.   : 0.1012    Max.   : 0.1165  
##  tGravityAccMag-mean() tGravityAccMag-std() tBodyAccJerkMag-mean()
##  Min.   :-0.9546       Min.   :-0.9465      Min.   :-0.9824       
##  1st Qu.:-0.6032       1st Qu.:-0.6398      1st Qu.:-0.6982       
##  Median :-0.5390       Median :-0.5897      Median :-0.6401       
##  Mean   :-0.5375       Mean   :-0.5809      Mean   :-0.6399       
##  3rd Qu.:-0.5037       3rd Qu.:-0.5509      3rd Qu.:-0.5874       
##  Max.   : 0.1012       Max.   : 0.1165      Max.   :-0.1118       
##  tBodyAccJerkMag-std() tBodyGyroMag-mean() tBodyGyroMag-std()
##  Min.   :-0.97891      Min.   :-0.9467     Min.   :-0.9512   
##  1st Qu.:-0.68813      1st Qu.:-0.6778     1st Qu.:-0.7448   
##  Median :-0.60956      Median :-0.6162     Median :-0.6747   
##  Mean   :-0.61733      Mean   :-0.5963     Mean   :-0.6551   
##  3rd Qu.:-0.56304      3rd Qu.:-0.5386     3rd Qu.:-0.5811   
##  Max.   :-0.01122      Max.   :-0.1298     Max.   :-0.2514   
##  tBodyGyroJerkMag-mean() tBodyGyroJerkMag-std() fBodyAcc-mean()-X 
##  Min.   :-0.9879         Min.   :-0.9846        Min.   :-0.98309  
##  1st Qu.:-0.8126         1st Qu.:-0.8379        1st Qu.:-0.66098  
##  Median :-0.7850         Median :-0.7963        Median :-0.61608  
##  Mean   :-0.7562         Mean   :-0.7726        Mean   :-0.61235  
##  3rd Qu.:-0.6964         3rd Qu.:-0.7149        3rd Qu.:-0.57917  
##  Max.   :-0.4169         Max.   :-0.4409        Max.   : 0.03526  
##  fBodyAcc-mean()-Y  fBodyAcc-mean()-Z fBodyAcc-std()-X 
##  Min.   :-0.95268   Min.   :-0.9600   Min.   :-0.9859  
##  1st Qu.:-0.60387   1st Qu.:-0.7247   1st Qu.:-0.6495  
##  Median :-0.52864   Median :-0.6821   Median :-0.6004  
##  Mean   :-0.52633   Mean   :-0.6578   Mean   :-0.5928  
##  3rd Qu.:-0.45149   3rd Qu.:-0.6214   3rd Qu.:-0.5518  
##  Max.   : 0.05668   Max.   :-0.2137   Max.   : 0.1219  
##  fBodyAcc-std()-Y    fBodyAcc-std()-Z  fBodyAccJerk-mean()-X
##  Min.   :-0.942461   Min.   :-0.9456   Min.   :-0.9852      
##  1st Qu.:-0.594785   1st Qu.:-0.6945   1st Qu.:-0.7150      
##  Median :-0.531728   Median :-0.6507   Median :-0.6490      
##  Mean   :-0.518042   Mean   :-0.6101   Mean   :-0.6466      
##  3rd Qu.:-0.452479   3rd Qu.:-0.5115   3rd Qu.:-0.5976      
##  Max.   :-0.008234   Max.   :-0.1466   Max.   :-0.0723      
##  fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z fBodyAccJerk-std()-X
##  Min.   :-0.9740       Min.   :-0.9796       Min.   :-0.98618    
##  1st Qu.:-0.6952       1st Qu.:-0.7857       1st Qu.:-0.70551    
##  Median :-0.6188       Median :-0.7539       Median :-0.64711    
##  Mean   :-0.6191       Mean   :-0.7378       Mean   :-0.64479    
##  3rd Qu.:-0.5571       3rd Qu.:-0.7010       3rd Qu.:-0.59306    
##  Max.   :-0.1164       Max.   :-0.3332       Max.   :-0.08219    
##  fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z fBodyGyro-mean()-X
##  Min.   :-0.97575     Min.   :-0.9837      Min.   :-0.9773   
##  1st Qu.:-0.67658     1st Qu.:-0.8220      1st Qu.:-0.7131   
##  Median :-0.60765     Median :-0.7841      Median :-0.6628   
##  Mean   :-0.60191     Mean   :-0.7762      Mean   :-0.6643   
##  3rd Qu.:-0.54868     3rd Qu.:-0.7388      3rd Qu.:-0.6308   
##  Max.   :-0.09087     Max.   :-0.4436      Max.   :-0.2179   
##  fBodyGyro-mean()-Y fBodyGyro-mean()-Z fBodyGyro-std()-X fBodyGyro-std()-Y
##  Min.   :-0.9725    Min.   :-0.9642    Min.   :-0.9823   Min.   :-0.9640  
##  1st Qu.:-0.7924    1st Qu.:-0.7095    1st Qu.:-0.7812   1st Qu.:-0.7715  
##  Median :-0.7404    Median :-0.6562    Median :-0.7346   Median :-0.6934  
##  Mean   :-0.6994    Mean   :-0.6349    Mean   :-0.7326   Mean   :-0.6671  
##  3rd Qu.:-0.6277    3rd Qu.:-0.5640    3rd Qu.:-0.6928   3rd Qu.:-0.5717  
##  Max.   :-0.3176    Max.   :-0.1656    Max.   :-0.3751   Max.   :-0.2932  
##  fBodyGyro-std()-Z fBodyAccMag-mean() fBodyAccMag-std() 
##  Min.   :-0.9667   Min.   :-0.9559    Min.   :-0.94960  
##  1st Qu.:-0.7512   1st Qu.:-0.6472    1st Qu.:-0.69577  
##  Median :-0.6980   Median :-0.5767    Median :-0.66006  
##  Mean   :-0.6835   Mean   :-0.5749    Mean   :-0.65131  
##  3rd Qu.:-0.6455   3rd Qu.:-0.5186    3rd Qu.:-0.62426  
##  Max.   :-0.2920   Max.   : 0.1428    Max.   :-0.07543  
##  fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-std()
##  Min.   :-0.978684          Min.   :-0.97815         
##  1st Qu.:-0.681950          1st Qu.:-0.68594         
##  Median :-0.608244          Median :-0.62782         
##  Mean   :-0.609944          Mean   :-0.63032         
##  3rd Qu.:-0.550686          3rd Qu.:-0.58078         
##  Max.   : 0.004763          Max.   :-0.04227         
##  fBodyBodyGyroMag-mean() fBodyBodyGyroMag-std()
##  Min.   :-0.9643         Min.   :-0.9516       
##  1st Qu.:-0.7606         1st Qu.:-0.7789       
##  Median :-0.7171         Median :-0.6987       
##  Mean   :-0.6904         Mean   :-0.6936       
##  3rd Qu.:-0.6242         3rd Qu.:-0.6474       
##  Max.   :-0.2895         Max.   :-0.3612       
##  fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std()   subject         
##  Min.   :-0.9853             Min.   :-0.9845            Length:36         
##  1st Qu.:-0.8379             1st Qu.:-0.8501            Class :character  
##  Median :-0.8010             Median :-0.8057            Mode  :character  
##  Mean   :-0.7743             Mean   :-0.7874                              
##  3rd Qu.:-0.7096             3rd Qu.:-0.7350                              
##  Max.   :-0.4380             Max.   :-0.4864                              
##    activity        
##  Length:36         
##  Class :character  
##  Mode  :character  
##                    
##                    
## 
```

## Write file to disk
---------------------

```r
write.table(dataset,"DataHumanActivityRecognition.txt",quote=FALSE, row.names=FALSE,sep="\t")
```
