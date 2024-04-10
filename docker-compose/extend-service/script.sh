docker compose -f prod.yaml start # jika file docker compose-nya bukan docker-compose.yaml

docker compose -f docker-compose.yaml -f dev.yaml create # agar file yang ada di docker-compose.yaml di merge dengan file yang ada di dev.yaml