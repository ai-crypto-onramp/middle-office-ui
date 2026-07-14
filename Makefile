.PHONY: build test run lint typecheck docker-build docker-run clean

build:
	npm run build

test:
	npm test

run:
	npm run dev

lint:
	npm run lint

typecheck:
	npm run typecheck

docker-build:
	docker build -t ai-crypto-onramp/middle-office-ui .

docker-run:
	docker run --rm -p 3000:3000 ai-crypto-onramp/middle-office-ui

clean:
	rm -rf dist coverage node_modules