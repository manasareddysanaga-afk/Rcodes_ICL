library(rgl)
library(RRPP)
library(Matrix)
library(geomorph)
library(ggplot2)
library(ggConvexHull)
library(MASS)
library(usethis)
library(devtools)
library(factoextra)

right_landmarks <- read.morphologika("right_landmarks.txt")
dim(right_landmarks)

sample_info_r <- read.csv("sample_info_r.csv", header=T, row.names=1)
sex<-sample_info_r$sex


#perform generalised Procrustes analysis
gpa<-gpagen(right_landmarks,print.progress=FALSE)
pca<-prcomp(two.d.array(gpa$coords))
summary(pca)

#scree plot
fviz_eig(pca)

#pca plot
df<-data.frame(pca$x, sex=sex)
ggplot(df, aes(x=PC2, y=PC3, colour=sex, fill=sex))+
  geom_convexhull(alpha = 0.2)+
  theme_bw(base_size = 12) +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        strip.background = element_blank()) +
  geom_point()

#plot means
mshape.males<-mshape(gpa$coords[,,sex=="M"])
mshape.females<-mshape(gpa$coords[,,sex=="F"])

predicted.shapes<-shape.predictor(gpa$coords, x=pca$x[,1:2], Intercept=TRUE,
                                  mshape.male=c(mean(pca$x[sex=="M",1]), mean(pca$x[sex=="M",2])),
                                  mshape.female=c(mean(pca$x[sex=="F",1]), mean(pca$x[sex=="F",2])))

plotRefToTarget(mshape.males, mshape.females, method="points")
plotRefToTarget(predicted.shapes$mshape.male, predicted.shapes$mshape.female, method="points")
rgl.viewpoint(theta=0, phi=0, fov=0, zoom=1)