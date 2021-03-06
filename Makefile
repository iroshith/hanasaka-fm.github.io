run:
	docker run -it --rm -v "$$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages \
		jekyll serve -d /_site --future --watch --force_polling -H 0.0.0.0 -P 4000

update_feed:
	gsutil docs/feed.xml gs://hanasakafm/feed.xml

update_artwork:
	gsutil docs/artwork.png gs://hanasakafm/artwork.png
