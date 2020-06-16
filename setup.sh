ARDUINO_CLI_PATH=../bin
TENSORFLOW_BUILD_PATH=../deps/tensorflow
TENSORFLOW_LIB_PATH=../libs/tensorflow

./"${ARDUINO_CLI_PATH}"/arduino-cli core install arduino:mbed
sudo apt-get install -y git xxd

mkdir -p ./${TENSORFLOW_BUILD_PATH}
mkdir -p ./${TENSORFLOW_LIB_PATH}

git clone -l -s https://github.com/tensorflow/tensorflow.git ./"$TENSORFLOW_BUILD_PATH"
./"$TENSORFLOW_BUILD_PATH"/tensorflow/lite/micro/tools/ci_build/test_arduino.sh
cp ./"$TENSORFLOW_BUILD_PATH"/tensorflow/lite/micro/tools/make/gen/arduino_x86_64/prj/tensorflow_lite.zip ./"$TENSORFLOW_LIB_PATH"