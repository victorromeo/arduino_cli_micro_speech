ARDUINO_CLI_PATH=../bin
TENSORFLOW_LIB_PATH=../libs/tensorflow_lite/src

FQBN=arduino:mbed:nano33ble

./"${ARDUINO_CLI_PATH}"/arduino-cli compile -b "${FQBN}" . --libraries "${TENSORFLOW_LIB_PATH}"