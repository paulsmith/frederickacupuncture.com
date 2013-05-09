build:
	bundle exec jekyll build --plugins _plugins/

serve:
	bundle exec jekyll serve -w -p 4001 --plugins _plugins/

publish:
	s3cmd -c ~/.s3cfg-paulsmith\@gmail.com -P sync src/_site/ s3://frederickacupuncture.com/
