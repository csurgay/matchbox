# matchbox

Training the recognition of matchbox models 1967-1990

Try it here: https://csurgay.com/matchbox

I. BUILDING THE DATABASE

1. run `./fetchyear-all.sh lookup.txt`

This will get all the model images into the images/ directory with no duplicates,
and create the simple<idno>.txt file for index.html generation.

2. To process a new model year, run `./fetchyear.sh <idno>`

This will extend the `images/` directory with the new model images of that year.

3. run `./transform-all.sh lookup.txt`

This will append images and model names to the index.html file be
processing the simple<idno>.txt datafiles.

4. To process a new model year, run `transform.sh <idno>`

This will append images and model names to the index.html file.
