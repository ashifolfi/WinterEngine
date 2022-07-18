#pragma once

#include <string_view>

#include <utility/Platform.h>

namespace chira {

class Image {
public:
    Image(const unsigned char buffer[], std::size_t bufferLen, int* width, int* height, int* fileChannels, int desiredChannels = 0, bool vflip = true);
    Image(const unsigned char buffer[], std::size_t bufferLen, int desiredChannels = 0, bool vflip = true);
    Image(std::string_view filepath, int* width, int* height, int* fileChannels, int desiredChannels = 0, bool vflip = true);
    explicit Image(std::string_view filepath, int desiredChannels = 0, bool vflip = true);
    ~Image();
    [[nodiscard]] byte* getData() const;
private:
    byte* data = nullptr;
};

}
