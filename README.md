# Traefik Hang Example

1. Start traefik and the demo service
    ```shell
    docker compose up
    ```
1. Run terraform
    ```shell
    terraform init
    TF_LOG=debug terraform apply  # This may require a few tries
    ```
