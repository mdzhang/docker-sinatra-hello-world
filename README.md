# Installation
(assumes OS X)

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
    echo 'eval "$(docker-machine env)"' >> $HOME/.bashrc
    bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'
    source  $HOME/.bashrc

    cd ~/Code
    git clone git@github.com:mdzhang/docker-sinatra-hello-world.git
    cd docker-sinatra-hello-world
    docker build -t docker-sinatra-hello-world .
    docker run -d -p 4567:4567 docker-sinatra-hello-world
    ```

- view app

    - find VM (since Docker doesn't work on OS X) ip via

        ```
        docker-machine ip # VM_ip_addr
        ```

    - navigate to

        ```
        [VM_ip_addr]:4567
        ```

### Resources

- http://brew.sh/#install
- https://caskroom.github.io/
- http://sourabhbajaj.com/mac-setup/Vagrant/README.html
- https://docs.docker.com/engine/getstarted/step_two/
