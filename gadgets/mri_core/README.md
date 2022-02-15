# MRI Core Gadgets

## Pure Gadgets
| Gadget Name                         | Type                  | Inputs                                           |
| ----------------------------------- | --------------------- | ------------------------------------------------ |
| ComplexToFloatGadget                | PureGadget            | Image (complex float)                            |
| DenoiseGadget                       | PureGadget            | DenoiseImage (float/complex float or ImageArray) |
| ScaleGadget                         | PureGadget            | Image (float) or IsmrmrdImageArray               |

## Channel Gadgets
| Gadget Name                         | Type                  | Inputs                                           |
| ----------------------------------- | --------------------- | ------------------------------------------------ |
| AcquisitionAccumulateTriggerGadget  | ChannelGadget         | Acquisition or Waveform                          |
| BucketToBufferGadget                | ChannelGadget         | AcquisitionBucket                                |
| CplxDumpGadget                      | ChannelGadget         | Acquisition                                      |
| ExtractGadget                       | ChannelGadget         | Image (complex float)                            |
| FlagTriggerGadget                   | ChannelGadget         | Acquisition                                      |
| FloatToFixPointGadget               | ChannelGadget         | Image (float)                                    |
| ImageFinishGadget                   | GenericChannelGadget  | ------------------------------------------------ |
| ImageIndexGadget                    | ChannelGadget         | Image (any)                                      |
| IsmrmrdDumpGadget                   | ChannelGadget         | Acquisition or Waveform                          |
| NoiseAdjustGadget                   | ChannelGadget         | Acquisition                                      |
| PhysioInterpolationGadget           | ChannelGadget         | Image (complex float)                            |

## Gadget1 Gadgets
| Gadget Name                         | Type                  | Inputs                                           |
| ----------------------------------- | --------------------- | ------------------------------------------------ |
| FFTGadget                           | Gadget1               | IsmrmrdReconData                                 |
| ImageAccumulatorGadget              | Gadget1               | IsmrmrdImageArray                                |
| ImageSortGadget                     | Gadget1               | ImageHeader                                      |
| PseudoReplicatorGadget              | Gadget1               | IsmrmrdReconData                                 |
| SimpleReconGadget                   | Gadget1               | IsmrmrdReconData                                 |

## Gadget2 Gadgets
| Gadget Name                         | Type                  | Inputs                                           |
| ----------------------------------- | --------------------- | ------------------------------------------------ |
| AccumulatorGadget                   | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| AcquisitionPassthroughGadget        | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| AsymmetricEchoAdjustROGadget        | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| AutoScaleGadget                     | Gadget2               | ImageHeader and hoNDArray (float)                |
| CoilComputationGadget               | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| CoilReductionGadget                 | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| CombineGadget                       | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| CropAndCombineGadget                | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| FlowPhaseSubtractionGadget          | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| ImageResizingGadget                 | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| ImageWriterGadget                   | Gadget2               | ImageHeader and hoNDArray (short/float/complex)  |
| MaxwellCorrectionGadget             | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| NoiseAdjustGadget_unoptimized       | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| PCACoilGadget                       | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| PartialFourierAdjustROGadget        | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| RemoveROOversamplingGadget          | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| WhiteNoiseInjectorGadget            | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |

## Gadget3 Gadgets
| Gadget Name                         | Type                  | Inputs                                           |
| ----------------------------------- | --------------------- | ------------------------------------------------ |
| ImageFFTGadget                      | Gadget3               | ImageHeader, hoNDArray, and MetaContainer        |

## Other Gadgets
| Gadget Name                         | Type                  | Inputs                                           |
| ----------------------------------- | --------------------- | ------------------------------------------------ |
| ImageArraySplitGadget               | Gadget1Of2            | ImageHeader and IsmrmrdImageArray                |
| RateLimitGadget                     | --------------------- | ACEMessageBlock                                  |

## Generic Recon Gadgets
| Generic Recon Gadgets               | Type           | Inputs                                           |
| ----------------------------------- | -------------- | ------------------------------------------------ |
| GenericImageReconArrayToImageGadget | -------------- | ------------------------------------------------ |
| GenericImageReconGadget             | -------------- | ------------------------------------------------ |
| GenericReconAccumulateImageTriggerGadget | --------- | ------------------------------------------------ |
| GenericReconCartesianFFTGadget      | -------------- | ------------------------------------------------ |
| GenericReconCartesianGrappaAIGadget | -------------- | ------------------------------------------------ |
| GenericReconCartesianGrappaGadget   | -------------- | ------------------------------------------------ |
| GenericReconCartesianNonLinearSpirit2DTGadget | ---- | ------------------------------------------------ |
| GenericReconCartesianReferencePrepGadget | --------- | ------------------------------------------------ |
| GenericReconCartesianSpiritGadget   | -------------- | ------------------------------------------------ |
| GenericReconEigenChannelGadget      | -------------- | ------------------------------------------------ |
| GenericReconFieldOfViewAdjustmentGadget | ---------- | ------------------------------------------------ |
| GenericReconGadget                  | -------------- | ------------------------------------------------ |
| GenericReconImageArrayScalingGadget | -------------- | ------------------------------------------------ |
| GenericReconImageToImageArrayGadget | -------------- | ------------------------------------------------ |
| GenericReconKSpaceFilteringGadget   | -------------- | ------------------------------------------------ |
| GenericReconNoiseStdMapComputingGadget | ----------- | ------------------------------------------------ |
| GenericReconPartialFourierHandlingFilterGadget | --- | ------------------------------------------------ |
| GenericReconPartialFourierHandlingGadget | --------- | ------------------------------------------------ |
| GenericReconPartialFourierHandlingPOCSGadget | ----- | ------------------------------------------------ |
| GenericReconReferenceKSpaceDelayedBufferGadget | --- | ------------------------------------------------ |
