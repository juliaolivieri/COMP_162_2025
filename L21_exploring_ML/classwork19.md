# Classwork 19

## Classwork 1

Code from class:
```
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
from sklearn import cluster, metrics, model_selection, linear_model

penguins = pd.read_csv("penguins.csv").dropna()


n_clusters = 3
quant_cols = ["bill_length_mm", "bill_depth_mm", "flipper_length_mm","body_mass_g"]
penguin_norm = penguins[quant_cols]/penguins[quant_cols].max().dropna()


clust = cluster.KMeans(n_clusters=n_clusters, random_state = 111).fit(penguin_norm)
penguins["clust"] = clust.labels_
sns.relplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm", hue = "clust", style="species")
plt.title("kmeans clustering")
plt.show()

clust = cluster.AgglomerativeClustering(n_clusters=n_clusters).fit(penguin_norm)
penguins["clust"] = clust.labels_
sns.relplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm", hue = "clust", style="species")
plt.title("agglomerative clustering")
plt.show()

clust = cluster.DBSCAN(eps=0.05,min_samples = 3).fit(penguin_norm)
penguins["clust"] = clust.labels_
sns.relplot(data = penguins, x = "bill_length_mm", y = "bill_depth_mm", hue = "clust", style="species")
plt.title("DBSCAN clustering")
plt.show()

```

1. **(CW) Load the iris dataset: https://drive.google.com/file/d/1vz1IJUIvmr4DfL8MwA5iUrSxD50xJeOX/view?usp=sharing**
1. **(CW) Use kmeans to cluster the dataset into three clusters based on the quantitative variables.**
1. **(CW) Plot two of the quantitative variables against each other and color by the cluster assignments**
1. Create a jointplot colored by cluster.
1. Try using agglomerative clustering and DBSCAN. Which is best at clustering the irises by species?
1. Try normalizing the quantitative variables by the maximum value in each column. How does this affect performance?
1. Try varying the number of clusters.
1. Create a jointplot colored by cluster.    

## Classwork 2

Code from class:
```
titanic = pd.get_dummies(titanic)

titanic = titanic.dropna()
X = titanic.drop("survived",axis=1)
y = titanic[["survived"]]

X_train, X_test, y_train, y_test = model_selection.train_test_split(X, y, test_size = 0.2, random_state = 333)
clf = linear_model.LogisticRegression().fit(X_train, y_train)
y_pred = clf.predict(X_test)

print("training accuracy", metrics.accuracy_score(y_train, clf.predict(X_train)))
print("test accuracy", metrics.accuracy_score(y_pred, y_test))

labels = np.unique(y_test)
cm = metrics.confusion_matrix(y_test, y_pred, labels = labels)
pd.DataFrame(cm, index=labels, columns=labels)

```

Link to Titanic dataset from class: https://drive.google.com/file/d/10oi-sQjPkatlSvNw0HqU51ktysFTdW0i/view?usp=sharing 

1. **(CW) Load the bikesharing dataset: https://drive.google.com/file/d/1AueN5bDPkc2GXWsagKrnUY5zCtpLSvg4/view?usp=sharing**
1. **(CW) One-hot-encode all categorical variables in the bikesharing dataset.**
1. **(CW) Train a linear regression model to predict `count` and evaluate its performance.**
1. Try training the same model, except don't use any of the categorical columns. Does including categorical columns improve performance?
1. Try training a ridge or lasso regression. Does regularization improve accuracy?   
