library(blogdown)

# Syntax ----
# <span style="text-decoration:underline">underline this text</span>


blogdown::new_site(theme = "alex-shpak/hugo-book")


blogdown::build_site()

blogdown::serve_site()

blogdown::stop_server()

blogdown::check_site()

blogdown::clean_duplicates()

blogdown::find_hugo()


# netlify host website: https://app.netlify.com/teams/lennyleadership/overview
# 1) psalm 119: https://psalm119.netlify.app
# Repository: github.com/lennyleadership/psalm119

# 2) lennyfaith: https://lennyfaith.netlify.app
# Repository: github.com/lennyleadership/spiritual_journey


# Steps to rebuild the website.
# Step #1: Back up the folder 'content'.
# Step #2: Delete the damaged repository at Github
#          Settings -> Danger Zone -> Delete this repository
# Step #3: Recreate the repository with exactly identical name.

# Step #4: Create a new project at RStudio.
# new project -> Version control -> Git -> Repository URL -> paste the URL, create project as subdirectory of ...
# in Console, type:
#  blogdown::new_site(theme = "alex-shpak/hugo-book")

# Remove:
# any pre-installed info in directory 'content', 'public', 
# overwrite:
# 1) config.yaml
# 2) content
# 3) huo-eureka

# Note: I made a mistake.  under tag, I missed '-' before.


#----
# To upload a batch of files
# in the 'Terminal' tab next to the 'Console' tabe
# copy and paste: git config --global user.name "lennyleadership"
# copy and paste: git config --global user.email "lenny.leadership@hotmail.com"
# copy and paste: git add -A
# then 'Commit', and 'push'


# Procedure to build a new blog:
# Create a new repository.
# Create a new project on the local computer.
# execute blogdown::new_site(theme = "###/theme name") in console
# commit to github if error messages are shown when building site.
# setup at netlify.[refer to https://www.youtube.com/watch?v=9Jqvaoeh1W4&t=1081s]
# 

# need to update hugo from time to time.


# hugo_book theme----
# body font and font size \themes\hugo-book\assets\_fonts.scss


# at Netlify ----
# advanced build settings
# key HUO_VERSION number current version of hugo.
