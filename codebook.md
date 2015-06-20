---
##CodeBook for tidy data mean_set.txt
author: "brueggel"
date: "Wednesday, June 17, 2015"
output: html_document

The training and the test sets from "Human Activity Recognition Using Smartphones Dataset" obtained from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones were merged to create one data set. The measurements on the mean and standard deviation for each measurement were extracted. Variables were renamed as follow:

###variables  : description                

"activity"         :name of actyvity performed by subjects                                           
"tbodyaccmeanx"    :average row body linear acceleration on X axis 
"tbodyaccmeany"    :average row body linear acceleration on Y axis
"tbodyaccmeanz"    :average row body linear acceleration on Z axis     
"tgravityaccmeanx" :average row gravity linear acceleration on X axis
"tgravityaccmeany" :average row gravity linear acceleration on Y axis     
"tgravityaccmeanz" :average row gravity linear acceleration on Z axis
"tbodyaccjerkmeanx":average time derivative of body linear acceleration on X axis     
"tbodyaccjerkmeany":average time derivative of body linear acceleration on Y axis  
"tbodyaccjerkmeanz":average time derivative of body linear acceleration on Z axis                 
"tbodygyromeanx"   :average row body angular velocity on X axis         
"tbodygyromeany"   :average row body angular velocity on Y axis                
"tbodygyromeanz"   :average row body angular velocity on Z axis   
"tbodygyrojerkmeanx":average time derivative of body angular velocity on X axis                
"tbodygyrojerkmeany":average time derivative of body angular velocity on Y axis  
"tbodygyrojerkmeanz":average time derivative of body angular velocity on Z axis               
"tbodyaccmagmean"   :average magnitude of body linear acceleration
"tgravityaccmagmean":average magnitude of gravity linear acceleration               
"tbodyaccjerkmagmean":average magnitude of time derivative of body linear acceleration    
"tbodygyromagmean"   :average magnitude of body angular velocity              
"tbodygyrojerkmagmean":average magnitude of time derivative of body angular velocity   
"fbodyaccmeanx"     :average Fast Fourier Transform of body linear acceleration on X axis                    
"fbodyaccmeany"     :average Fast Fourier Transform of body linear acceleration on Y axis            
"fbodyaccmeanz"     :average Fast Fourier Transform of body linear acceleration on Z axis                           
"fbodyaccmeanfreqx" :average of the frequency components of body linear acceleration on X axis
"fbodyaccmeanfreqy" :average of the frequency components of body linear acceleration on Y axis               
"fbodyaccmeanfreqz" :average of the frequency components of body linear acceleration on Z axis       
"fbodyaccjerkmeanx" :average Fast Fourier Transform of the time derivative of body linear acceleration on X axis                           
"fbodyaccjerkmeany" :average Fast Fourier Transform of the time derivative of body linear acceleration on Y axis 
"fbodyaccjerkmeanz" :average Fast Fourier Transform of the time derivative of body linear acceleration on Z axis                
"fbodyaccjerkmeanfreqx" :average of the frequency components of the time derivative of body linear acceleration on X axis
"fbodyaccjerkmeanfreqy" :average of the frequency components of the time derivative of body linear acceleration on Y axis            
"fbodyaccjerkmeanfreqz" :average of the frequency components of the time derivative of body linear acceleration on Z axis   
"fbodygyromeanx" :average Fast Fourier Transform of the body angular velocity on X axis                  
"fbodygyromeany" :average Fast Fourier Transform of the body angular velocity on Y axis      
"fbodygyromeanz" :average Fast Fourier Transform of the body angular velocity on Z axis                    
"fbodygyromeanfreqx" :average of the frequency components of the body angular velocity on X axis   
"fbodygyromeanfreqy" :average of the frequency components of the body angular velocity on Y axis              
"fbodygyromeanfreqz" :average of the frequency components of the body angular velocity on Z axis   
"fbodyaccmagmean" :average Fast Fourier Transform of the magnitude of body linear acceleration                
"fbodyaccmagmeanfreq" :average of the frequency components of the magnitude of body linear acceleration 
"fbodybodyaccjerkmagmean" :average Fast Fourier Transform of the magnitude of the time derivative of body linear acceleration         
"fbodybodyaccjerkmagmeanfreq" :average of the frequency components of the magnitude of the time derivative of body linear acceleration  
"fbodybodygyromagmean" :average Fast Fourier Transform of the magnitude of the body angular velocity           
"fbodybodygyromagmeanfreq" :average of the frequency components of the magnitude of the body angular velocity  
"fbodybodygyrojerkmagmean" :average Fast Fourier Transform of the magnitude of the time derivative of the body angular velocity        
"fbodybodygyrojerkmagmeanfreq" :average of the frequency components of the magnitude of the time derivative of the body angular velocity   
"angletbodyaccmeangravity" :angle between mean row body linear acceleration and mean gravity         
"angletbodyaccjerkmeangravitymean" :angle between mean time derivative of the row body linear acceleration and mean gravity           
"angletbodygyromeangravitymean" :angle between mean row body angular velocity and mean gravity  
"angletbodygyrojerkmeangravitymean" :angle between mean time derivative of the row body angular velocity and mean gravity 
"anglexgravitymean" :angle of mean gravity at X axis               
"angleygravitymean" :angle of mean gravity at Y axis   
"anglezgravitymean" :angle of mean gravity at Z axis                
"tbodyaccstdx" :standard deviation of the row body linear acceleration on X axis              
"tbodyaccstdy" :standard deviation of the row body linear acceleration on Y axis                    
"tbodyaccstdz" :standard deviation of the row body linear acceleration on Z axis  
"tgravityaccstdx" :standard deviation of the row gravity linear acceleration on X axis                  
"tgravityaccstdy" :standard deviation of the row gravity linear acceleration on Y axis  
"tgravityaccstdz" :standard deviation of the row gravity linear acceleration on Z axis                  
"tbodyaccjerkstdx" :standard deviation of the time derivative of body linear acceleration on X axis
"tbodyaccjerkstdy" :standard deviation of the time derivative of body linear acceleration on Y axis                
"tbodyaccjerkstdz" :standard deviation of the time derivative of body linear acceleration on Z axis 
"tbodygyrostdx"  :standard deviation of the row body angular velocity on X axis                 
"tbodygyrostdy"  :standard deviation of the row body angular velocity on Y axis    
"tbodygyrostdz"  :standard deviation of the row body angular velocity on Z axis                   
"tbodygyrojerkstdx" :standard deviation of the time derivative of the row body angular velocity on X axis  
"tbodygyrojerkstdy" :standard deviation of the time derivative of the row body angular velocity on Y axis               
"tbodygyrojerkstdz" :standard deviation of the time derivative of the row body angular velocity on Z axis 
"tbodyaccmagstd"   :standard deviation of the magnitude of the body linear acceleration               
"tgravityaccmagstd" :standard deviation of the magnitude of the gravity linear acceleration    
"tbodyaccjerkmagstd" :standard deviation of the magnitude of the time derivative of the row body linear acceleration            
"tbodygyromagstd" :standard deviation of the magnitude of the row body angular velocity      
"tbodygyrojerkmagstd" :standard deviation of the magnitude of the time derivative of the row body angular velocity            
"fbodyaccstdx" :standard deviation of the Fast Fourier Transform of the row body linear acceleration on X axis           
"fbodyaccstdy" :standard deviation of the Fast Fourier Transform of the row body linear acceleration on Y axis                    
"fbodyaccstdz" :standard deviation of the Fast Fourier Transform of the row body linear acceleration on Z axis     
"fbodyaccjerkstdx" :standard deviation of the Fast Fourier Transform of the time derivative of the row body linear acceleration on X axis                 
"fbodyaccjerkstdy" :standard deviation of the Fast Fourier Transform of the time derivative of the row body linear acceleration on Y axis      
"fbodyaccjerkstdz" :standard deviation of the Fast Fourier Transform of the time derivative of the row body linear acceleration on Z axis                 
"fbodygyrostdx" :standard deviation of the Fast Fourier Transform of the time derivative of the row body angular velocity on X axis          
"fbodygyrostdy" :standard deviation of the Fast Fourier Transform of the time derivative of the row body angular velocity on Y axis                    
"fbodygyrostdz" :standard deviation of the Fast Fourier Transform of the time derivative of the row body angular velocity on Z axis                
"fbodyaccmagstd" :standard deviation of the Fast Fourier Transform of the magnitude of the body linear acceleration                
"fbodybodyaccjerkmagstd" :standard deviation of the Fast Fourier Transform of the time derivative of the magnitude of the body linear acceleration        
"fbodybodygyromagstd" :standard deviation of the Fast Fourier Transform of the magnitude of the body angular velocity             
"fbodybodygyrojerkmagstd" :standard deviation of the Fast Fourier Transform of the time derivative of the magnitude of the body angular velocity     
"subject" :index of the subject who performed the activity                
