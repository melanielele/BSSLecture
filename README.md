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
dominant eigenvectors of A. The Rayleigh quotient is the corresponding eigenvalue.Here I changed matrix from 3*3 to 4*4. We can also change the iteration stop condition to be the error(previous eigenvalue minus this iteration's eigenvalue) to see if it converges. In that way we don't need to specify the iteration time but rather give the threshold. 
  
#### Ex03_testICAmethods.m
This script test the performance of different methods on ICA(fastICA, JADE,SOBI). FastICA estimates the independent components from given
multidimensional signals, it uses Hyvarinen's fixed-point algorithm. Here in the script, we have different parameters to choose from. The decorrelation approach can be chosen from 
symmetric ('symm'),which estimates all the independent component in parallel, or deflation ('defl'), which estimates independent component one-by-one like in projection pursuit.And the nonlinearity can be chosen from 'pow3', 'tanh', 'gauss', 'skew'. For SOBI and JADE, we set number of sources as the channel number. 

#### Ex04_testEOGArtifactRemoval.m
This script is a practical application for BSS that we want to remove EOG Artifact from EEG data. Two algorithm is implemented here, JADE and NSCA(Negative Selection Classification Algorithm). 
Channel denoised by JADE and NSCA are plotted respectively. We can clearly see that there are some subtle difference between the results of JADE and NSCA when the raw channel siganl is different,especially for some particular channels like eog1,eog2,eog3. however at a high level comparison, the deniosed channel looks similar.


#### Ex05_testFetalECGExtraction.m
Run testICAPiCAAfterMECGCancellation for this part. This is a function to apply ICA and Pi-CA after maternal ECG removal, and the GUI popped up is a ECG beat fitter GUI.

### Question 4

#### Removing electroencephalographic artifacts by blind source separation

Eye movements is one of the major contamination of EEG data interpretation, a lot of researches were conducted on removing artifacts from EEG recording. Some popular methods such as regression and PCA were proposed before, however, there are still some limitations about these methods. Regression will also removing relevant EEG signals when removing eye artifacts, and PCA cannot completely remove eye artifacts when brain signals and eye siganls are having comparable amplitudes. 
In this paper, the author proposed a blind source separation method using independent component analysis(ICA).  ICA is an algorithm to recover independent source signals when given linearly mixed unknown matrix. There are several assumptions regarding ICA's performance, in EEG signals, we know that multichannel EEG recordsing are linear mixture of brain signals and artifactual signals. also, time courses of the sources are independent. so ICA will be suitable to apply to EEG signals. In this study, ICA decomposition was performed on 10-s EEG epochs from three different EEG data. The algorithm derives spatial filters that decompose EEG data
recorded at multiple scalp sensors into a sum of components with fixed scalp distributions and maximally independent time courses. Compared to the result of PCA and SVD, the principal components derived by them have more complex spatial patterns, however, ICA does not impose any condition on the spatial filters. 

Pseudocode is not applicable to this paper because it just simply apply ICA decomposition to the EEG dataset. Analysis of the ICA performance versus PCA and SVD is the topic of this paper. But author mentioned the initial learning rate and batch size in the paper.


