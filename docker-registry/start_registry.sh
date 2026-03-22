docker run -d \
  -p 5000:5000 \
  --restart=always \
  --name registry \
  -v ~/docker-registry/data:/var/lib/registry \
  -v ~/docker-registry/certs:/certs \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:5000 \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
  registry:2