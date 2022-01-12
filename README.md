# Google Cloud Builder for Terraform

This is just google/cloud-sdk image with Terraform installed so that you can run
Terraform commands that require `gcloud` command. Like interacting with a GKE
cluster using Terraform Kubernetes provider.

## Develop

Requirements:

- [Docker](https://docs.docker.com/get-docker/)
- [gcloud CLI](https://cloud.google.com/sdk/gcloud)

Build:

Upon editing the Dockerfile, build and tag the image for the repository that
will host it, remember to make a `latest` tag as well:

```sh
$ docker build -t eu.gcr.io/compensate-infrastructure/cloudbuild-terraform:X.Y.Z \n
-t eu.gcr.io/compensate-infrastructure/cloudbuild-terraform:latest .
```

Finally push all the new tags

```sh
$ docker push eu.gcr.io/compensate-infrastructure/cloudbuild-terraform --all-tags
```

