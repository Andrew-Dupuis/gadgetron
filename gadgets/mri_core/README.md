# MRI Core Gadgets
The MRI core gadgets are the backbone of the Gadgetron pipeline, and provide core functions like data-ingress, flow management, type conversion, and more. 

## Pure Gadgets
| Gadget Name                         | Has Tests? | Inputs                                           |
| ----------------------------------- | ---------- | ------------------------------------------------ |
| ComplexToFloatGadget                | No         | Image (complex float)                            |
| DenoiseGadget                       | No         | DenoiseImage (float/complex float or ImageArray) |
| ScaleGadget                         | No         | Image (float) or IsmrmrdImageArray               |

## Channel Gadgets
| Gadget Name                         | Has Tests? | Inputs                                           |
| ----------------------------------- | ---------- | ------------------------------------------------ |
| AcquisitionAccumulateTriggerGadget  | No         | Acquisition or Waveform                          |
| BucketToBufferGadget                | No         | AcquisitionBucket                                |
| CplxDumpGadget                      | No         | Acquisition                                      |
| ExtractGadget                       | No         | Image (complex float)                            |
| FlagTriggerGadget                   | No         | Acquisition                                      |
| FloatToFixPointGadget               | No         | Image (float)                                    |
| ImageFinishGadget                   | No         | ------------------------------------------------ |
| ImageIndexGadget                    | No         | Image (any)                                      |
| IsmrmrdDumpGadget                   | No         | Acquisition or Waveform                          |
| NoiseAdjustGadget                   | No         | Acquisition                                      |
| PhysioInterpolationGadget           | No         | Image (complex float)                            |

## Gadget1 Gadgets
| Gadget Name                         | Has Tests? | Inputs                                           |
| ----------------------------------- | ---------- | ------------------------------------------------ |
| FFTGadget                           | No         | IsmrmrdReconData                                 |
| ImageAccumulatorGadget              | No         | IsmrmrdImageArray                                |
| ImageSortGadget                     | No         | ImageHeader                                      |
| PseudoReplicatorGadget              | No         | IsmrmrdReconData                                 |
| SimpleReconGadget                   | No         | IsmrmrdReconData                                 |

## Gadget2 Gadgets
| Gadget Name                         | Has Tests? | Inputs                                           |
| ----------------------------------- | ---------- | ------------------------------------------------ |
| AccumulatorGadget                   | No         | AcquisitionHeader and hoNDArray (complex float)  |
| AcquisitionPassthroughGadget        | No         | AcquisitionHeader and hoNDArray (complex float)  |
| AsymmetricEchoAdjustROGadget        | No         | AcquisitionHeader and hoNDArray (complex float)  |
| AutoScaleGadget                     | No         | ImageHeader and hoNDArray (float)                |
| CoilComputationGadget               | No         | ImageHeader and hoNDArray (complex float)        |
| CoilReductionGadget                 | No         | AcquisitionHeader and hoNDArray (complex float)  |
| CombineGadget                       | No         | ImageHeader and hoNDArray (complex float)        |
| CropAndCombineGadget                | No         | ImageHeader and hoNDArray (complex float)        |
| FlowPhaseSubtractionGadget          | No         | ImageHeader and hoNDArray (complex float)        |
| ImageResizingGadget                 | No         | ImageHeader and hoNDArray (complex float)        |
| ImageWriterGadget                   | No         | ImageHeader and hoNDArray (short/float/complex)  |
| MaxwellCorrectionGadget             | No         | ImageHeader and hoNDArray (complex float)        |
| NoiseAdjustGadget_unoptimized       | No         | AcquisitionHeader and hoNDArray (complex float)  |
| PCACoilGadget                       | No         | AcquisitionHeader and hoNDArray (complex float)  |
| PartialFourierAdjustROGadget        | No         | AcquisitionHeader and hoNDArray (complex float)  |
| RemoveROOversamplingGadget          | No         | AcquisitionHeader and hoNDArray (complex float)  |
| WhiteNoiseInjectorGadget            | No         | AcquisitionHeader and hoNDArray (complex float)  |

## Gadget3 Gadgets
| Gadget Name                         | Has Tests? | Inputs                                           |
| ----------------------------------- | ---------- | ------------------------------------------------ |
| ImageFFTGadget                      | No         | ImageHeader, hoNDArray, and MetaContainer        |

## Other Gadgets
| Gadget Name            | Type                | Has Tests? | Inputs                                           |
| ---------------------- | ------------------- | ---------- | ------------------------------------------------ |
| ImageArraySplitGadget  | Gadget1Of2          | No         | ImageHeader and IsmrmrdImageArray                |
| RateLimitGadget        | BasicPropertyGadget | No         | ACEMessageBlock                                  |

## Generic Recon Gadgets
| Generic Recon Gadgets                          | Has Tests? | Inputs                                           |
| ---------------------------------------------- | No         | ------------------------------------------------ |
| GenericImageReconArrayToImageGadget            | No         | ------------------------------------------------ |
| GenericImageReconGadget                        | No         | ------------------------------------------------ |
| GenericReconAccumulateImageTriggerGadget       | No         | ------------------------------------------------ |
| GenericReconCartesianFFTGadget                 | No         | ------------------------------------------------ |
| GenericReconCartesianGrappaAIGadget            | No         | ------------------------------------------------ |
| GenericReconCartesianGrappaGadget              | No         | ------------------------------------------------ |
| GenericReconCartesianNonLinearSpirit2DTGadget  | No         | ------------------------------------------------ |
| GenericReconCartesianReferencePrepGadget       | No         | ------------------------------------------------ |
| GenericReconCartesianSpiritGadget              | No         | ------------------------------------------------ |
| GenericReconEigenChannelGadget                 | No         | ------------------------------------------------ |
| GenericReconFieldOfViewAdjustmentGadget        | No         | ------------------------------------------------ |
| GenericReconGadget                             | No         | ------------------------------------------------ |
| GenericReconImageArrayScalingGadget            | No         | ------------------------------------------------ |
| GenericReconImageToImageArrayGadget            | No         | ------------------------------------------------ |
| GenericReconKSpaceFilteringGadget              | No         | ------------------------------------------------ |
| GenericReconNoiseStdMapComputingGadget         | No         | ------------------------------------------------ |
| GenericReconPartialFourierHandlingFilterGadget | No         | ------------------------------------------------ |
| GenericReconPartialFourierHandlingGadget       | No         | ------------------------------------------------ |
| GenericReconPartialFourierHandlingPOCSGadget   | No         | ------------------------------------------------ |
| GenericReconReferenceKSpaceDelayedBufferGadget | No         | ------------------------------------------------ |
