build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve -w -p 4001

publish:
	aws --profile paul s3 sync --acl public-read --delete _site/ s3://www.frederickacupuncture.com/
