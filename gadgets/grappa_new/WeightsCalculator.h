#pragma once

#include "SliceAccumulator.h"

#include "Context.h"
#include "Channel.h"
#include "Node.h"

namespace Gadgetron::Grappa {

    class WeightsCalculator : public Core::TypedGadgetNode<Slice> {
    public:
        WeightsCalculator(const Core::Context &, const std::unordered_map<std::string, std::string> &);

        NODE_PROPERTY(block_size_lines, size_t, "Block size used to estimate missing samples; number of lines.", 4);
        NODE_PROPERTY(block_size_samples, size_t, "Block size used to estimate missing samples; number of samples.", 5);

        NODE_PROPERTY(convolution_kernel_threshold, float, "Grappa convolution kernel calibration threshold.", 5e-4);

        void process(Core::TypedInputChannel<Slice> &in, Core::OutputChannel &out) override;

    private:
        const Core::Context context;
    };
}