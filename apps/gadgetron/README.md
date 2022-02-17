# Gadgetron Server Application

The Gadgetron application receives data from clients, then processes the data and returns the results to the client. 

## Running the Gadgetron

Execute "gadgetron" in a command terminal to start the Gadgetron and the necessary [storage server](../storage/README.md). 

## Allowed options::
  --help                                Prints this help message. <br>
  --info                                Prints build info about the Gadgetron. <br>
  -W [ --dir ] arg (="/tmp/gadgetron/") Set the Gadgetron working directory.<br>
  -G [ --home ] arg (="/home/dominiquefranson/miniconda3/envs/gadgetron")<br>
                                        Set the Gadgetron home directory.<br>
  -p [ --port ] arg (=9002)             Listen for incoming connections on this<br>
                                        port.<br>

## Storage options:
  -E [ --storage_address ] arg          External address of a storage server. <br>
                                        If not provided, a storage server will <br>
                                        be started.<br>
  -s [ --storage_port ] arg (=9112)     Port on which to run the storage <br>
                                        server.<br>
  -D [ --database_dir ] arg (="/home/dominiquefranson/.gadgetron/storage/database")<br>
                                        Directory in which to store the storage<br>
                                        server database.<br>
  -S [ --storage_dir ] arg (="/home/dominiquefranson/.gadgetron/storage")<br>
                                        Directory in which to store data blobs.<br>
