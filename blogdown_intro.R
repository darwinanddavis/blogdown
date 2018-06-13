install.packages("blogdown")
y
library(blogdown)

# -------- Hugo --------
# install
blogdown::install_hugo()
# check version
blogdown::hugo_version()
# update version. latest versions: https://github.com/gohugoio/hugo/releases
blogdown::update_hugo()

# generate new site. Replaces File > New Project > Website using blogdown 
theme <- "crakjie/hugo-base-theme"
blogdown::new_site(theme = theme)
blogdown::build_site()

#help
?blogdown::new_site

### dirs and files ###
# https://bookdown.org/yihui/blogdown/a-quick-example.html
# config.toml: specify some global settings for your site
# ~ contents/: where you write the R Markdown or Markdown source files for your posts and pages
# ~public/: The publishing directory (by default, public/). Your website will be generated to this directory, 

# live preview
blogdown::serve_site()

# globals
# blogdown.subdir: 	A subdirectory under content/
# blogdown.yaml.empty:	Preserve empty fields in YAML?
options(blogdown.author = 'Matt Malishev', blogdown.ext = 'Rmd')

# new post
# posts appear under ~/content/post/
blogdown:::new_post_addin() # create new post
blogdown:::update_meta_addin() # update post metadata 


# ---- publish site ------
blogdown::hugo_build() # creates ~public/ dir

# 1. Create a new site on Netlify from your GitHub repository that 
    # contains the source files of your website 





