---
title: "Codebook"
output: html_document
---

This code book summarizes the resulting data fields in tidy.txt.

##Identifiers

<ul>
<li><code>subject</code> - The ID of the test subject</li>
<li><code>activity</code> - The type of activity performed when the corresponding measurements were taken</li>
</ul>

##Measurements

<ul>
<li><code>tBodyAccMeanX</code></li>
<li><code>tBodyAccMeanY</code></li>
<li><code>tBodyAccMeanZ</code></li>
<li><code>tBodyAccStdX</code></li>
<li><code>tBodyAccStdY</code></li>
<li><code>tBodyAccStdZ</code></li>
<li><code>tGravityAccMeanX</code></li>
<li><code>tGravityAccMeanY</code></li>
<li><code>tGravityAccMeanZ</code></li>
<li><code>tGravityAccStdX</code></li>
<li><code>tGravityAccStdY</code></li>
<li><code>tGravityAccStdZ</code></li>
<li><code>tBodyAccJerkMeanX</code></li>
<li><code>tBodyAccJerkMeanY</code></li>
<li><code>tBodyAccJerkMeanZ</code></li>
<li><code>tBodyAccJerkStdX</code></li>
<li><code>tBodyAccJerkStdY</code></li>
<li><code>tBodyAccJerkStdZ</code></li>
<li><code>tBodyGyroMeanX</code></li>
<li><code>tBodyGyroMeanY</code></li>
<li><code>tBodyGyroMeanZ</code></li>
<li><code>tBodyGyroStdX</code></li>
<li><code>tBodyGyroStdY</code></li>
<li><code>tBodyGyroStdZ</code></li>
<li><code>tBodyGyroJerkMeanX</code></li>
<li><code>tBodyGyroJerkMeanY</code></li>
<li><code>tBodyGyroJerkMeanZ</code></li>
<li><code>tBodyGyroJerkStdX</code></li>
<li><code>tBodyGyroJerkStdY</code></li>
<li><code>tBodyGyroJerkStdZ</code></li>
<li><code>tBodyAccMagMean</code></li>
<li><code>tBodyAccMagStd</code></li>
<li><code>tGravityAccMagMean</code></li>
<li><code>tGravityAccMagStd</code></li>
<li><code>tBodyAccJerkMagMean</code></li>
<li><code>tBodyAccJerkMagStd</code></li>
<li><code>tBodyGyroMagMean</code></li>
<li><code>tBodyGyroMagStd</code></li>
<li><code>tBodyGyroJerkMagMean</code></li>
<li><code>tBodyGyroJerkMagStd</code></li>
<li><code>fBodyAccMeanX</code></li>
<li><code>fBodyAccMeanY</code></li>
<li><code>fBodyAccMeanZ</code></li>
<li><code>fBodyAccStdX</code></li>
<li><code>fBodyAccStdY</code></li>
<li><code>fBodyAccStdZ</code></li>
<li><code>fBodyAccMeanFreqX</code></li>
<li><code>fBodyAccMeanFreqY</code></li>
<li><code>fBodyAccMeanFreqZ</code></li>
<li><code>fBodyAccJerkMeanX</code></li>
<li><code>fBodyAccJerkMeanY</code></li>
<li><code>fBodyAccJerkMeanZ</code></li>
<li><code>fBodyAccJerkStdX</code></li>
<li><code>fBodyAccJerkStdY</code></li>
<li><code>fBodyAccJerkStdZ</code></li>
<li><code>fBodyAccJerkMeanFreqX</code></li>
<li><code>fBodyAccJerkMeanFreqY</code></li>
<li><code>fBodyAccJerkMeanFreqZ</code></li>
<li><code>fBodyGyroMeanX</code></li>
<li><code>fBodyGyroMeanY</code></li>
<li><code>fBodyGyroMeanZ</code></li>
<li><code>fBodyGyroStdX</code></li>
<li><code>fBodyGyroStdY</code></li>
<li><code>fBodyGyroStdZ</code></li>
<li><code>fBodyGyroMeanFreqX</code></li>
<li><code>fBodyGyroMeanFreqY</code></li>
<li><code>fBodyGyroMeanFreqZ</code></li>
<li><code>fBodyAccMagMean</code></li>
<li><code>fBodyAccMagStd</code></li>
<li><code>fBodyAccMagMeanFreq</code></li>
<li><code>fBodyBodyAccJerkMagMean</code></li>
<li><code>fBodyBodyAccJerkMagStd</code></li>
<li><code>fBodyBodyAccJerkMagMeanFreq</code></li>
<li><code>fBodyBodyGyroMagMean</code></li>
<li><code>fBodyBodyGyroMagStd</code></li>
<li><code>fBodyBodyGyroMagMeanFreq</code></li>
<li><code>fBodyBodyGyroJerkMagMean</code></li>
<li><code>fBodyBodyGyroJerkMagStd</code></li>
<li><code>fBodyBodyGyroJerkMagMeanFreq</code></li>
</ul>

##Activity Labels

<ul>
<li><code>WALKING</code> (value <code>1</code>): subject walking during the test</li>
<li><code>WALKING_UPSTAIRS</code> (value <code>2</code>): subject walking up a staircase</li>
<li><code>WALKING_DOWNSTAIRS</code> (value <code>3</code>): subject walking down a staircaset</li>
<li><code>SITTING</code> (value <code>4</code>): subject sitting</li>
<li><code>STANDING</code> (value <code>5</code>): subject standing</li>
<li><code>LAYING</code> (value <code>6</code>): subject laying down</li>
</ul>

##Data Handlng

In addition to downloading the zip file, extracting and view the data files, the following steps were executed to create the resulting <code>tidy.txt</code> file:

1. Load activity labels + features
2. Extract features data on mean and standard deviation
3. Load the train and test datasets
4. Merge datasets and add labels
5. Turn activities & subjects into factors

