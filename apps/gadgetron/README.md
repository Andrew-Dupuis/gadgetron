# Gadgetron Server Application

The Gadgetron application receives data from clients, then processes the data and returns the results to the client. 

## Running the Gadgetron

Execute "gadgetron" in a command terminal to start the Gadgetron and the necessary [storage server](../storage/README.md). 

## Allowed options::
  --help                                Prints this help message.
  --info                                Prints build info about the Gadgetron.
  -W [ --dir ] arg (="/tmp/gadgetron/") Set the Gadgetron working directory.
  -G [ --home ] arg (="/home/dominiquefranson/miniconda3/envs/gadgetron")
                                        Set the Gadgetron home directory.
  -p [ --port ] arg (=9002)             Listen for incoming connections on this
                                        port.

## Storage options:
  -E [ --storage_address ] arg          External address of a storage server. 
                                        If not provided, a storage server will 
                                        be started.
  -s [ --storage_port ] arg (=9112)     Port on which to run the storage 
                                        server.
  -D [ --database_dir ] arg (="/home/dominiquefranson/.gadgetron/storage/database")
                                        Directory in which to store the storage
                                        server database.
  -S [ --storage_dir ] arg (="/home/dominiquefranson/.gadgetron/storage")
                                        Directory in which to store data blobs.
