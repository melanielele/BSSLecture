### Student Name: Melanie Zhao
### Student Email: zhiyue.zhao@emory.edu
***
### Question 1
#### Part A
![Q1a](https://github.com/melanielele/BSSLecture/blob/main/Q1a.png)
![Q1B](https://github.com/melanielele/BSSLecture/blob/main/Q1b.png)
#### Part B
![matlab_result](https://github.com/melanielele/BSSLecture/blob/main/Matlab_eig.png)
##### The eig function can give us Eigenvalues and Eigen vector as the same time. V is the EigenVector and the diagonal value in d is the Eigen values. which is the same as the result calculated by hand. 
***
### Question 2
#### Part A
#### Using Power Method to calculate the eigenvalues
lambda = 4.6180
#### Part B
![Q2a](https://github.com/melanielele/BSSLecture/blob/main/eigenvalue.png)
![Q2b](https://github.com/melanielele/BSSLecture/blob/main/Principal%20Vector.png)
###  Question 3
#### Ex01_testPCA.m
This script using Principle Component Analysis to computing the principal components. I changed the data from example 1 to 2 to test this script on the ECG signal data. Firstly removed the lowpass basline of the original ECG data, and then get the eigenvalue and eigenvectors of the covariance matrix of the input data. After that, decorrelate the channel and find out the partial energy for each eigenvalue. Finally set up a threshold and keep the most important eigenvalues.For the ECG data, we keep 5 eigenvalues and ignore 10 other eigenvalues. And the compressed version of the data is in a uniform axis.

#### Ex02_testEigenAnalysisPowerMethod.m
This is the script for Eigenvalue decomposition using the power method. The power method for approximating eigenvalues is iterative. First we assume that the matrix A has a dominant eigenvalue with corresponding dominant eigenvectors. Then we choose an initial approximation of one of the
dominant eigenvectors of A. The Rayleigh quotient is the corresponding eigenvalue.Here I changed matrix from 3*3 to 4*4. We can also change the iteration stop condition to error less than some defined threshold. In that way we don't need to specify the iteration time but rather give the threshold. 
  
