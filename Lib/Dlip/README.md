# Dlib 소스 코드 다운로드
 - 다운로드
  - [Dlib GitHub 페이지](https://github.com/davisking/dlib)
 - clone
  - git clone https://github.com/davisking/dlib.git

# Dlib 빌드

`
cd dlib
mkdir build
cd build
cmake ..
cmake --build . --config Release
`

# OpenCV 통합 (Optional)

`
cmake -DDLIB_USE_CUDA=OFF -DUSE_AVX_INSTRUCTIONS=1 -DOpenCV_DIR=/path/to/opencv ..
cmake --build . --config Release
`

# 설치 확인

`
./dlib/examples/face_detection_ex
`

# Visual Studio Code에서 Dlib 사용
 - c_cpp_properties.json에 Dlib 경로 추가

`
{
  "configurations": [
    {
      "name": "Win32",
      "includePath": [
        "${workspaceFolder}/**",
        "C:/path/to/dlib"  // Dlib 경로 추가
      ],
      "defines": [],
      "compilerPath": "C:/msys64/mingw64/bin/g++.exe",
      "cStandard": "c11",
      "cppStandard": "c++20",
      "intelliSenseMode": "windows-gcc-x64"
    }
  ],
  "version": 4
}
`
