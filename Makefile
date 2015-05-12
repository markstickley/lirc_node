TESTS = test/*.js
REPORTER = dot

test:
	@./node_modules/.bin/mocha \
		--require should \
		--require test/common.js \
		--reporter $(REPORTER) \
		--growl \
		# --grep "notify each instance"\
		$(TESTS)

.PHONY: test bench
