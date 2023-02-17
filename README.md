# ywanglab.github.io
====================

Technologies this website uses:  

    Jekyll  
    Github Pages  
    Twitter Bootstrap 4.4.1


    background color: #1b2530;
Before pushing changes, please check that they will work on your system first with the plugins included in the Gemfile using the bundler tool (results served at [0.0.0.0:4000](0.0.0.0:4000)):

    sudo gem install bundler
    bundle install
    bundle exec jekyll serve --port 1234

    And go to http://localhost:1234/


    Header & Footer for all pages: ./_includes/header.html ./_includes/footer.html 
    Configurations: ./_config.yml
    Navigation Links: ./_data/navlinks.yml
    Home: ./index.md; sidebar included from ./_includes/sidebar.md
    Research: ./research/index.md
    Publications: ./publications/index.md
    Members: ./members/index.html, script automatically loops through posts in ./_members with a _template.md
    News: ./news/index.html; the script automatically loops through posts in ./_posts
    Join: ./join/index.md
    Contact: ./contact/index.md
    Twitter side bars in Members and News page: ./_includes/twitter_sidebar.html
    All images: ./docs/assets/

    Custom styles: ./static/css/custom.css


### Statement

This website was created using the template kindly open-sourced by Fraser Lab (https://github.com/fraser-lab/fraser-lab.github.io). Please refer to the Fraser lab for information on license. A copy of the license file is also included in this folder. 