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
