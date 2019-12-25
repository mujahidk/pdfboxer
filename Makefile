
build:
	./mvnw clean package

docker:
	docker build -t pdfboxer:develop .

run:
	docker run -p 8080:8080 -t pdfboxer:develop
