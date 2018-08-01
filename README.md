Website: https://insureum.netlify.com/

Requires Metamask on desktop or Toshi/Status on mobile.


Local run:

	truffle compile
	truffle migrate
	npm run dev
	npm run build

Heroku deploy:

	heroku buildpacks:set https://github.com/kreativgebiet/heroku-buildpack-webpack
	heroku buildpacks:add --index 1 heroku/nodejs
	git push heroku master
