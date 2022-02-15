# MRI Core Gadgets

| Gadget Name                         | Type                  | Inputs                                           |
| ----------------------------------- | --------------------- | ------------------------------------------------ |
| AccumulatorGadget                   | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| AcquisitionAccumulateTriggerGadget  | ChannelGadget         | Acquisition or Waveform                          |
| AcquisitionPassthroughGadget        | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| AsymmetricEchoAdjustROGadget        | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| AutoScaleGadget                     | Gadget2               | ImageHeader and hoNDArray (float)                |
| BucketToBufferGadget                | ChannelGadget         | AcquisitionBucket                                |
| CoilComputationGadget               | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| CoilReductionGadget                 | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| CombineGadget                       | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| ComplexToFloatGadget                | PureGadget            | Image (complex float)                            |
| CplxDumpGadget                      | ChannelGadget         | Acquisition                                      |
| CropAndCombineGadget                | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| DenoiseGadget                       | PureGadget            | DenoiseImage (float/complex float or ImageArray) |
| ExtractGadget                       | ChannelGadget         | Image (complex float)                            |
| FFTGadget                           | Gadget1               | IsmrmrdReconData                                 |
| FlagTriggerGadget                   | ChannelGadget         | Acquisition                                      |
| FloatToFixPointGadget               | ChannelGadget         | Image (float)                                    |
| FlowPhaseSubtractionGadget          | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| ImageAccumulatorGadget              | Gadget1               | IsmrmrdImageArray                                |
| ImageArraySplitGadget               | Gadget1Of2            | ImageHeader and IsmrmrdImageArray                |
| ImageFFTGadget                      | Gadget3               | ImageHeader, hoNDArray, and MetaContainer        |
| ImageFinishGadget                   | GenericChannelGadget  | ------------------------------------------------ |
| ImageIndexGadget                    | ChannelGadget         | Image (any)                                      |
| ImageResizingGadget                 | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| ImageSortGadget                     | Gadget1               | ImageHeader                                      |
| ImageWriterGadget                   | Gadget2               | ImageHeader and hoNDArray (short/float/complex)  |
| IsmrmrdDumpGadget                   | ChannelGadget         | Acquisition or Waveform                          |
| MaxwellCorrectionGadget             | Gadget2               | ImageHeader and hoNDArray (complex float)        |
| NoiseAdjustGadget                   | ChannelGadget         | Acquisition                                      |
| NoiseAdjustGadget_unoptimized       | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| PCACoilGadget                       | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| PartialFourierAdjustROGadget        | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| PhysioInterpolationGadget           | ChannelGadget         | Image (complex float)                            |
| PseudoReplicatorGadget              | Gadget1               | IsmrmrdReconData                                 |
| RateLimitGadget                     | --------------------- | ACEMessageBlock                                  |
| RemoveROOversamplingGadget          | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |
| ScaleGadget                         | PureGadget            | Image (float) or IsmrmrdImageArray               |
| SimpleReconGadget                   | Gadget1               | IsmrmrdReconData                                 |
| WhiteNoiseInjectorGadget            | Gadget2               | AcquisitionHeader and hoNDArray (complex float)  |



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
