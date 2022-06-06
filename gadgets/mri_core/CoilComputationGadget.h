/**
    \brief  Computes coil sensitivities based on image data. Used by https://github.com/SyneRBI/SIRF
    \author Original: Johannes Mayer
    \author PureGadget Conversion: Andrew Dupuis
    \test   Untested within Gadgetron, tested within SIRF
*/

#pragma once

#include "PureGadget.h"
#include "Types.h"
#include "mri_core_coil_map_estimation.h"

namespace Gadgetron{
    class CoilComputationGadget : public Core::PureGadget<Core::Image<std::complex<float>>, Core::Image<std::complex<float>>> {
    public:
      using Core::PureGadget<Core::Image<std::complex<float>>, Core::Image<std::complex<float>>>::PureGadget;
        Core::Image<std::complex<float>> process_function(Core::Image<std::complex<float>> image) const override;
    protected:
        NODE_PROPERTY(ks_, size_t, "Correlation matrix size in plane.", 7);
        NODE_PROPERTY(kz_, size_t, "Correlation matrix size in slice direction.", 5);
        NODE_PROPERTY(power_, size_t, "Number of iterations to apply power method", 3);
    };
}