
defaut: build

build:
	@docker build -t dmin .

run:
	@docker run dmin

.PHONY: test
test:
	@docker-compose -f docker-compose.test.yml -p dmin build
	@docker-compose -f docker-compose.test.yml -p dmin up -d
	@docker wait dmin_sut_1 | grep 0; if [ $$? -eq 0 ] ; then echo -e "\033[0;32mTESTS PASS\033[0m"; else echo -e "\033[0;31mTESTS FAIL\033[0m"; fi
	@docker-compose -f docker-compose.test.yml -p dmin down
