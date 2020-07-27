# MLflow Server

[MLflow](https://mlflow.org/) server. Key features

  - MLflow UI
  - MLflow tracking server
  - MLflow model registry
  - PostgreSQL backend store
  - Running on Kubernetes
  - One click deployment on [staroid](https://staroid.com/g/open-datastudio/mlflow-server).
  
[![Run](https://staroid.com/api/run/button.svg)](https://staroid.com/api/run)


## Articles

 - [How Open Data Studio Jupyter notebook connects MLflow server](https://medium.com/@leemoonsoo/how-open-data-studio-jupyter-notebook-connects-mlflow-server-e805929322ff?sk=86151b30f48d17a117b2554fd857e425) - step by step instruction how to use with Jupyter notebook and how it works underneath.


## Development

Run locally with [skaffold](https://skaffold.dev) command.

```
$ skaffold dev --port-forward -p minikube
```

and browse `http://localhost:5000`


### Clean up

It creates secret `mlflow-ssh-key` dynamically. Skaffold does not remove this one. Clean up resource with

```
$ kubectl delete secret mlflow-ssh-key
```

