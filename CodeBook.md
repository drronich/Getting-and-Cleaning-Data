## Summarized Version of the BaseHuman Activity Recognition Using Smartphones Dataset - dataset2.txt.

This dataset based on BaseHuman Activity Recognition Using Smartphones Dataset and contains the average of each variable for each activity and each subject.

Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data introduction

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Features introduction

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

##The dataset includes the following variables:

1. subject: numeric. An identifier of the subject who carried out the experiment.
2. activity: factor. An activity label. Possible values:
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING

The further fields represents Mean value and Standard deviation of the domain signals.

3. tBodyAcc.mean.X: numeric.
4. tBodyAcc.mean.Y: numeric.
5. tBodyAcc.mean.Z: numeric.
6. tBodyAcc.std.X: numeric.
7. tBodyAcc.std.Y: numeric.
8. tBodyAcc.std.Z: numeric.
9. tGravityAcc.mean.X: numeric.
10. tGravityAcc.mean.Y: numeric.
11. tGravityAcc.mean.Z: numeric.
12. tGravityAcc.std.X: numeric.
13. tGravityAcc.std.Y: numeric.
14. tGravityAcc.std.Z: numeric.
15. tBodyAccJerk.mean.X: numeric.
16. tBodyAccJerk.mean.Y: numeric.
17. tBodyAccJerk.mean.Z: numeric.
18. tBodyAccJerk.std.X: numeric.
19. tBodyAccJerk.std.Y: numeric.
20. tBodyAccJerk.std.Z: numeric.
21. tBodyGyro.mean.X: numeric.
22. tBodyGyro.mean.Y: numeric.
23. tBodyGyro.mean.Z: numeric.
24. tBodyGyro.std.X: numeric.
25. tBodyGyro.std.Y: numeric.
26. tBodyGyro.std.Z: numeric.
27. tBodyGyroJerk.mean.X: numeric.
28. tBodyGyroJerk.mean.Y: numeric.
29. tBodyGyroJerk.mean.Z: numeric.
30. tBodyGyroJerk.std.X: numeric.
31. tBodyGyroJerk.std.Y: numeric.
32. tBodyGyroJerk.std.Z: numeric.
33. tBodyAccMag.mean: numeric.
34. tBodyAccMag.std: numeric.
35. tGravityAccMag.mean: numeric.
36. tGravityAccMag.std: numeric.
37. tBodyAccJerkMag.mean: numeric.
38. tBodyAccJerkMag.std: numeric.
39. tBodyGyroMag.mean: numeric.
40. tBodyGyroMag.std: numeric.
41. tBodyGyroJerkMag.mean: numeric.
42. tBodyGyroJerkMag.std: numeric.
43. fBodyAcc.mean.X: numeric.
44. fBodyAcc.mean.Y: numeric.
45. fBodyAcc.mean.Z: numeric.
46. fBodyAcc.std.X: numeric.
47. fBodyAcc.std.Y: numeric.
48. fBodyAcc.std.Z: numeric.
49. fBodyAccJerk.mean.X: numeric.
50. fBodyAccJerk.mean.Y: numeric.
51. fBodyAccJerk.mean.Z: numeric.
52. fBodyAccJerk.std.X: numeric.
53. fBodyAccJerk.std.Y: numeric.
54. fBodyAccJerk.std.Z: numeric.
55. fBodyGyro.mean.X: numeric.
56. fBodyGyro.mean.Y: numeric.
57. fBodyGyro.mean.Z: numeric.
58. fBodyGyro.std.X: numeric.
59. fBodyGyro.std.Y: numeric.
60. fBodyGyro.std.Z: numeric.
61. fBodyAccMag.mean: numeric.
62. fBodyAccMag.std: numeric.
63. fBodyBodyAccJerkMag.mean: numeric.
64. fBodyBodyAccJerkMag.std: numeric.
65. fBodyBodyGyroMag.mean: numeric.
66. fBodyBodyGyroMag.std: numeric.
67. fBodyBodyGyroJerkMag.mean: numeric.
68. fBodyBodyGyroJerkMag.std99. : numeric.
