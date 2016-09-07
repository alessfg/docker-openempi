# Docker Environment for OpenEMPI

Docker environment for [OpenEMPI] (http://www.openempi.org/), an open source implementation of an Enterprise Master Patient Index.

## How To Use

* OpenEMPI can be used via their [administrative console] (http://www.openempi.org/confluence/display/openempi30/Administrative+Console) or their [RESTful API] (http://www.openempi.org/confluence/display/openempi30/File).
* The Docker image contains no data upon startup. Sample data can be found in the csv files found in the [official software distribution] (http://www.openempi.org/confluence/display/openempi30/Installation+of+the+Distribution).
* For more information please refer to the official [OpenEMPI documentation] (http://www.openempi.org/confluence/display/openempi30/Documentation).

## Setup

1. Install [Docker] (https://www.docker.com).
2. Clone the repository.
3. Open a terminal in the directory where you cloned the repo.
4. Run `docker-compose up`.
5. Once the startup process completes your terminal should display a message saying:
  * `INFO: Server startup in {time}`.
6. Find the ip of your Docker environment:
  * If you are using Docker toolbox this tends to be `192.168.99.100`.
  * If you are using a native Docker installation it will be `localhost`.
7. You can now visit `{docker-ip}:8080/openempi-admin` using your favorite browser or connect to the RESTful API via `{docker-ip}:8080/{rest-query}`.

## Data Storage and Persistence

The postgres Docker container stores data internally at `/var/lib/postgresql/data`. By default, this volume is not mapped to any volume in the host OS. If you destroy the Docker container the data will only be persisted within a hidden volume partition; which will result in new containers not being able to access the database data. This is by design as local volume partitions are dependent on the host OS and thus specifing a particular volume can lead to undesired errors. To map the volume where data is to be persisted follow the [Docker volume instructions] (https://docs.docker.com/engine/tutorials/dockervolumes) and modify the Dockerfile and docker-compose.yml postgres service accordingly.

## Setup with EtherCIS

Most applications will require the usage of both an EMPI and EHR server. This can be done by following these instructions:

1. Clone this repository and the [Docker EtherCIS repository] (https://github.com/alessfg/docker-ethercis) into the same directory.
2. Download the docker-compose gist available [here] (https://gist.github.com/alessfg/f9c4f330850858b9afaea33de5595774) into the directory root.
3. Run `docker-compose up`.

## Notes

* If you encounter any issues please post in the official [OpenEMPI forums] (https://kenai.com/projects/openempi/forums).

## License

* The OpenEMPI platform is licensed under the GNU Affero License. A copy of the license can be found in the [OpenEMPI subdirectory]. License information for the various open source libraries employed by OpenEMPI can also be found in the subdirectory.
* All other code is licensed under the MIT License.
