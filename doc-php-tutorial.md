
### Steps

1. docker run -it --rm -v "$PWD":/tmp/project <image_name> bash
1. git clone https://github.com/heroku/php-getting-started.git <target-directory>
1. heroku create
    Create the repository on Heroku and link the remote to the current Git repository with the new remote location `heroku`
1. git push heroku master
    Push the code to the `heroku` remote and build/deploy at the same time
1. heroku ps:scale web=1
    Process scaling configuration to ensure at least one instance exists in the pool
1. heroku open
    Shortcut to open the Heroku generated site URL
1. heroku logs -t
    Tail the stdOut
1. heroku run bash
    Alternate way to SSH to the running dyno
1. heroku config:set <Var>=<Value>
    Usable with `heroku config` and `<?php getenv(<Var>); ?>`
1. heroku addons:create heroku-postgresql:hobby-dev
1. heroku pg:psql
