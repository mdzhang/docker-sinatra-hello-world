# docker-sinatra-hello-world

A simple "Hello World" app using Docker, Sinatra, rbenv and bundler.

## Installation

### OS X

- install [brew](http://brew.sh/#install)

    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

- install software dependencies

    ```
    brew tap homebrew/bundle
    brew bundle
    ```

- setup project

    ```
    echo 'eval "$(docker-machine env)"' >> $HOME/.bashrc
    bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'
    source  $HOME/.bashrc

    cd ~/Code
    git clone git@github.com:mdzhang/docker-sinatra-hello-world.git
    cd docker-sinatra-hello-world
    docker build -t docker-sinatra-hello-world .
    docker run -d -p 4567:4567 -v $(pwd):/docker-sinatra-hello-world docker-sinatra-hello-world
    ```

- view app

    ```
    open http://$(docker-machine ip):4567
    ```

## Resources

- http://brew.sh/#install
- https://caskroom.github.io/
- http://sourabhbajaj.com/mac-setup/Docker/README.html
- https://docs.docker.com/engine/getstarted/step_two/
- https://docs.docker.com/v1.10/engine/userguide/containers/dockervolumes/