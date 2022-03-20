if not exist ./glm (
    git clone https://github.com/g-truc/glm
)
%VULKAN_SDK%/bin/glslc shader.vert -o vert.spv
%VULKAN_SDK%/bin/glslc shader.frag -o frag.spv
cmake -S . -B build/ . -G "MinGW Makefiles"
cd build/
make