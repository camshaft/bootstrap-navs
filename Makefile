
build: components bootstrap-navs.css
	@component build --dev

bootstrap-navs.css: bootstrap-navs.less
	node_modules/.bin/recess bootstrap-navs.less --compile > bootstrap-navs.css

components: component.json
	@component install --dev

clean:
	rm -fr build components bootstrap-navs.css

.PHONY: clean
