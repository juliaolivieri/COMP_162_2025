# Classwork 22

Code from class:

```
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from sklearn.neural_network import MLPClassifier
from sklearn import model_selection, metrics, linear_model
from sklearn.preprocessing import StandardScaler

# load data
df = pd.read_csv("titanic.csv")
df = df.dropna()

# process and split data
X = pd.get_dummies(df.drop("survived",axis=1))
y = df[["survived"]]

X_train, X_test, y_train, y_test = model_selection.train_test_split(X, y, test_size = 0.2, random_state = 111)
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)  # fit on train, transform train
X_test = scaler.transform(X_test)

############# Train and evaluate neural network #############
clf = MLPClassifier(hidden_layer_sizes=(10,5), random_state=1, max_iter = 1000,
                   # , verbose = True
                   ).fit(X_train, y_train)

y_pred_train = clf.predict(X_train)
y_pred_test = clf.predict(X_test)

print(metrics.accuracy_score(y_train, y_pred_train))
print(metrics.accuracy_score(y_test, y_pred_test))

labels = np.unique(y_test)
cm = metrics.confusion_matrix(y_test, y_pred_test, labels = labels)
pd.DataFrame(cm, index = labels, columns = labels)


plt.plot(clf.loss_curve_)
plt.title("Loss Curve")
plt.xlabel("Epochs")
plt.ylabel("Loss")
plt.show()

############# Train and evaluate logistic regression #############

clf = linear_model.LogisticRegression().fit(X_train, y_train)

y_pred_train = clf.predict(X_train)
y_pred_test = clf.predict(X_test)

print(metrics.accuracy_score(y_train, y_pred_train))
print(metrics.accuracy_score(y_test, y_pred_test))

labels = np.unique(y_test)
cm = metrics.confusion_matrix(y_test, y_pred_test, labels = labels)
pd.DataFrame(cm, index = labels, columns = labels)


```
