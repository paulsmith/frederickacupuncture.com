build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve -w -p 4001

publish:
	s3cmd -c ~/.s3cfg-paulsmith\@gmail.com -P sync src/_site/ s3://frederickacupuncture.com/
