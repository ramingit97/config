services=$(docker service ls --format "{{.Name}}")

for service in $services; do
    echo "Logs for service $service:"
    docker service logs -f $service
done
