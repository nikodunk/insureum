Website: https://insureum.netlify.com/



	npm run dev

	truffle compile
	truffle migrate
	npm run build

	heroku buildpacks:set https://github.com/kreativgebiet/heroku-buildpack-webpack

	heroku buildpacks:add --index 1 heroku/nodejs

	git push heroku master
