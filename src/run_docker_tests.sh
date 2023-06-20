#! /bin/bash
cd $(dirname $0)
set -x

container_name="testcontainer"
image_name="testimage"

function clean() {
    echo "cleaning..."
    docker stop $container_name
    docker rm $container_name
    docker rmi $image_name
    rm test.sh.log
}

function build() {
    echo "building..."
    docker build -t $image_name -f container/dockerfile .
}

function run_tests() {
    echo "running..."
    docker run --name $container_name $image_name
    docker logs $container >> test.sh.log 2>&1
    docker rm -f $container >> test.sh.log 2>&1
}

function run_test_for_install() {
    echo "running..."
    docker run --entrypoint "/bin/bash" --name $container $image -c "pip install . && starter"
    docker logs $container >> test.sh.log 2>&1
    docker rm -f $container >> test.sh.log 2>&1 || true
}

function main() {
    clean
    build
    run_tests
    run_test_for_install
}

main