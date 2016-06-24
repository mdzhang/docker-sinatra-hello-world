# Installation

- install [brew](http://brew.sh/#install)

    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

- install software dependencies

    ```
    brew tap caskroom/cask
    brew cask install virtualbox
    brew cask install dockertoolbox
    ```

- setup project

    ```
    bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'

    cd ~/Code
    git clone git@github.com:mdzhang/docker-sinatra-hello-world.git
    cd docker-sinatra-hello-world
    [TODO]
    ```

- view app at

    ```
    http://localhost:4567
    ```

### Resources

- http://brew.sh/#install
- https://caskroom.github.io/
- http://sourabhbajaj.com/mac-setup/Vagrant/README.html
- https://docs.docker.com/engine/getstarted/step_two/
