# Stylesheets Manifest

## Directory Structure
Directories are based off SMACSS (Scalable, Modular Architecture for CSS)
_Learn more at [SMACSS](http://smacss.com/)_

### base/
Base contains pure element styling and app settings.


### layout/
Overarching page layout. Minimal styling should done in this section.

### modules/
These are the reusable components where the majority of styling is broken into small, manageable files.

### views/
SMACSS uses the term 'themes', but I modified my implementation around to rails specific views. These styles are more specific to particular views.

## Mobile first
Styles begin with mobile first. Media queries are introduced when the view is **larger** than mobile query.

## Media query management
Media queries are nested into the class at hand. This follows the recommendation of SCSS and aims for a central location for styling.

_"@media directives in Sass behave just like they do in plain CSS, with one extra capability: they can be nested in CSS rules. [Read more](http://sass-lang.com/docs/yardoc/file.SASS_REFERENCE.html#media)_

## application.scss
Files are explicitly imported to provide a central manifest for all stylesheets used. It also makes it a little easier to debug if there are errors related to importing new, or changing stylesheets.

