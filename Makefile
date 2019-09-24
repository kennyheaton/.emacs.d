.PHONY: all

all: packages/swiper

packages/swiper: packages
	git clone https://github.com/abo-abo/swiper packages/swiper

packages:
	mkdir packages

clean:
	rm -rf packages
