OUT=dummy.dll
BUILD=go build
LDFLAGS=-ldflags=-s -w -buildid=
MODE=-buildmode=c-shared
# will enable once go1.13 drops
TRIM=

all: 
	GOOS=windows GOARCH=amd64 ${BUILD} ${TRIM} ${LDFLAGS} -o ${OUT} ${MODE} main.go