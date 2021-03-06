CXX = g++
CXXFLAGS = -std=c++17 -pedantic -Wall -Wextra -DNDEBUG -O2 -Isrc -march=native -mtune=native
LDFLAGS = -lSDL2

PROJECT_NAME = pendulum
PROJECT_SRCS = $(wildcard src/*.cpp)

all: $(PROJECT_SRCS)
	$(CXX) $(CXXFLAGS) $^ -o bin/$(PROJECT_NAME) $(LDFLAGS)

run:
	bin/$(PROJECT_NAME)

bin/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

