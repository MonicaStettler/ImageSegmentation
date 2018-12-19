# ImageSegmentation

Automated Image Segmentation of Clothing Ensembles from Pinterest

Final (solo) project for my Image Processing course (CSC481)

ABSTRACT

Fashion bloggers provide beautiful images of complete clothing ensembles, fully put together
with accessories such as a purse, shoes, belt, earrings, scarves etc. What is lacking is the ability
to buy the items in the image. In an ideal world, one would be able to click on any of the items
in the outfit and be taken to a site to purchase the exact outfit or specific item. Second best
would be to feed the image into an app that separates the image of the ensemble into many
images– with each new image showing only one item. These single item images would then be
used to search and match on an online shopping site such as Amazon.

After an extensive search, I was not able to find such an app. Some require the user to feed a
perfect image to the app – one with a clean background and only one item in it. Some only let
you use images that are already in their database with links to vendors with relationships with
the app. One app I tried linked to shopping sites where prices for a simple blouse ranged from
$400-$5,000.

My goal was to accomplish phase one of the dream app described above using MATLAB. I set
out to take an image of a cute outfit with accessories from Pinterest and segment each item
from the image to one item per image. For example, one image might become eight: a skirt (by
itself), a blouse, a jacket, a scarf, shoes, purse, earrings and belt. The goal was also for this to be
automatic, with no user intervention required.
