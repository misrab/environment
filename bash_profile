
# basic vars                                                                                                                  
export ENV="development"
export POSTGRESQL_LOCAL_URL="postgres://postgres: @localhost:5432/postgres"

# functions                                                                                                                   
function dockerClear {
    # Delete all containers                                                                                                   
    docker rm $(docker ps -a -q)
    # Delete all images                                                                                                       
    docker rmi $(docker images -q)
}

function push {
    git add -A . && git commit -m "commit" && git push origin master
}
function pull {
    git pull origin master
}

function code {
    cd ~/code
}

function gogo {
    cd ~/go/src/github.com
}