# 컴파일러 및 플래그 설정
CC = g++
CFLAGS = -g -Wall
CXXFLAGS = -g -Wall --std=c++20  # C++20 표준을 사용하도록 설정
LDFLAGS = -L/c/msys64/mingw64/lib -lopencv_core -lopencv_imgcodecs -lopencv_highgui  # OpenCV 라이브러리 의존성 추가

# 소스 파일 목록을 별도의 파일에서 불러오기
include sources.mk

# 소스 파일 및 오브젝트 파일
OBJ = $(SRC:.cpp=.o)

# 실행 파일 이름
TARGET = PixelytixAnalyzer

# 기본 빌드 타겟
all: $(TARGET)

# 링크 과정
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ) $(LDFLAGS)

# 개별 파일 컴파일
%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

# 클린업 타겟
clean:
	rm -f $(OBJ) $(TARGET)
