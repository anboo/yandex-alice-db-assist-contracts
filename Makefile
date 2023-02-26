generate-proxy-service:
	@echo "Regenerate proxy service stubs from .proto"
	@cd langs/go/proxy_service && rm -rf *
	@protoc \
		-I . \
        --go_out=langs/go/proxy_service \
		--go_opt paths=source_relative \
		--go-grpc_out=paths=source_relative:langs/go/proxy_service \
        proxy_service.proto
	@echo "Regenerate proxy service stubs from .proto completed"