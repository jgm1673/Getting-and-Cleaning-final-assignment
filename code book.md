Code book 
##Human Activity Recognition Using Smartphones Data Set
Acknowledgement: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity 
Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted 
Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

"1" "subjectid" - one of 30 volunteers within an age bracket of 19-48 years
"2" "activityname" – one of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist

The average of each of the following measurements were made for each subject for each activity  

the following acronyms are used to identify the mean :  Mean value, std: Standard deviation

accelerometer raw signals tacc-xyz and averaged for the activity/subject, in units of Triaxial acceleration 
from the accelerometer (total acceleration) and the estimated body acceleration
"3" "tbodyaccmeanx"
"4" "tbodyaccmeany"
"5" "tbodyaccmeanz"
"6" "tbodyaccstdx"
"7" "tbodyaccstdy"
"8" "tbodyaccstdz"
"9" "tgravityaccmeanx"
"10" "tgravityaccmeany"
"11" "tgravityaccmeanz"
"12" "tgravityaccstdx"
"13" "tgravityaccstdy"
"14" "tgravityaccstdz"

the body linear acceleration were derived in time to obtain Jerk signals tbodyaccjerk-xyz and then averaged
for the activity/subject

"15" "tbodyaccjerkmeanx"
"16" "tbodyaccjerkmeany"
"17" "tbodyaccjerkmeanz"
"18" "tbodyaccjerkstdx"
"19" "tbodyaccjerkstdy"
"20" "tbodyaccjerkstdz"

gyroscope 3-axial raw signals tgyro-xyz then averaged for the activity/subject, in units of Triaxial Angular velocity from the
gyroscope.
"21" "tbodygyromeanx"
"22" "tbodygyromeany"
"23" "tbodygyromeanz"
"24" "tbodygyrostdx"
"25" "tbodygyrostdy"
"26" "tbodygyrostdz"

the body angular velocity were derived in time to obtain Jerk signals tbodygyrojerk-xyz – and then averaged for the activity/subject
"27" "tbodygyrojerkmeanx"
"28" "tbodygyrojerkmeany"
"29" "tbodygyrojerkmeanz"
"30" "tbodygyrojerkstdx"
"31" "tbodygyrojerkstdy"
"32" "tbodygyrojerkstdz"

magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, 
tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag) – then averaged for the activity/subject

"33" "tbodyaccmagmean"
"34" "tbodyaccmagstd"
"35" "tgravityaccmagmean"
"36" "tgravityaccmagstd"
"37" "tbodyaccjerkmagmean"
"38" "tbodyaccjerkmagstd"
"39" "tbodygyromagmean"
"40" "tbodygyromagstd"
"41" "tbodygyrojerkmagmean"
"42" "tbodygyrojerkmagstd"

Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc-xyz, fbodyaccjerk-xyz, fbodygyro-xyz, 
fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals).

"43" "fbodyaccmeanx"
"44" "fbodyaccmeany"
"45" "fbodyaccmeanz"
"46" "fbodyaccstdx"
"47" "fbodyaccstdy"
"48" "fbodyaccstdz"
"49" "fbodyaccmeanfreqx"
"50" "fbodyaccmeanfreqy"
"51" "fbodyaccmeanfreqz"
"52" "fbodyaccjerkmeanx"
"53" "fbodyaccjerkmeany"
"54" "fbodyaccjerkmeanz"
"55" "fbodyaccjerkstdx"
"56" "fbodyaccjerkstdy"
"57" "fbodyaccjerkstdz"
"58" "fbodyaccjerkmeanfreqx"
"59" "fbodyaccjerkmeanfreqy"
"60" "fbodyaccjerkmeanfreqz"
"61" "fbodygyromeanx"
"62" "fbodygyromeany"
"63" "fbodygyromeanz"
"64" "fbodygyrostdx"
"65" "fbodygyrostdy"
"66" "fbodygyrostdz"
"67" "fbodygyromeanfreqx"
"68" "fbodygyromeanfreqy"
"69" "fbodygyromeanfreqz"
"70" "fbodyaccmagmean"
"71" "fbodyaccmagstd"
"72" "fbodyaccmagmeanfreq"
"73" "fbodybodyaccjerkmagmean"
"74" "fbodybodyaccjerkmagstd"
"75" "fbodybodyaccjerkmagmeanfreq"
"76" "fbodybodygyromagmean"
"77" "fbodybodygyromagstd"
"78" "fbodybodygyromagmeanfreq"
"79" "fbodybodygyrojerkmagmean"
"80" "fbodybodygyrojerkmagstd"
"81" "fbodybodygyrojerkmagmeanfreq"

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable, 
which were also averaged by subject/activity
"82" "angletbodyaccmeangravity"
"83" "angletbodyaccjerkmeangravitymean"
"84" "angletbodygyromeangravitymean"
"85" "angletbodygyrojerkmeangravitymean"
"86" "anglexgravitymean"
"87" "angleygravitymean"
"88" "anglezgravitymean"
