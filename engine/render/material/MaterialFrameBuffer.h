#pragma once

#include "MaterialFactory.h"

namespace chira {

class Frame;

class MaterialFrameBuffer final : public IMaterial {
public:
    MaterialFrameBuffer(std::string identifier_, Renderer::FrameBufferHandle* handle_)
        : IMaterial(std::move(identifier_))
        , handle(handle_) {}
    void compile(const byte buffer[], std::size_t bufferLength) override;
    void use() const override;

protected:
    Renderer::FrameBufferHandle* handle;

public:
    template<typename Archive>
    void serialize(Archive& ar) {
        ar(
                cereal::make_nvp("shader", this->shaderPath)
        );
    }
};

} // namespace chira
