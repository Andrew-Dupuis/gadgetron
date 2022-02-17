# Gadgetron Image Reconstruction Framework

## Getting Started

The Gadgetron can be installed in a [conda](https://conda.io) environment. To install the Gadgetron define and `environment.yaml` file with:

```yaml
name: gadgetron
channels:
  - nvidia/label/cuda-11.6.0
  - gadgetron
  - conda-forge
  - bioconda
  - defaults
  - intel
dependencies:
  - gadgetron>=4.1.2
  - siemens_to_ismrmrd>=1.0.0
```

And create the environment with:

```bash
conda env create -f environment.yaml
```

After activating the environment (with `conda activate gadgetron`), you should be able to check that everything is working with `gadgetron --info`

## Modifying or Creating Gadgetron Gadgets

See the [Development Instructions](Development.md) to get started contributing to core Gadgetron development. 

## Running the Gadgetron in Kubernetes

The Docker images can be deployed in a Kubernetes cluster. See [this repository](https://github.com/Microsoft/gadgetron-azure) for details.

## License

The Gadgetron is available under a modified MIT license. Please read [LICENSE](LICENSE) file for licensing details.
