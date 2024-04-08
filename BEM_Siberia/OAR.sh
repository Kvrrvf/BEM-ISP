#!/bin/bash

# Consulta de entrada de datos
read -p "Site: " site
read -p "Cluster: " cluster
read -p "N° nodes: " nodes
read -p "Walltime (format required HH:MM:SS): " walltime
read -p "Job name: " job_name

ssh "$site.g5k" << EOF

echo '

en.init_logging(level=logging.INFO)
conf = (
    en.G5kConf()
    .from_settings(job_name="$job_name",
                   walltime="$walltime",
                   job_type=[])
    .add_machine(roles=["klebsiella"],
#                 servers=["chiclet-5.lille.grid5000.fr"]
                 cluster="$cluster",
                 nodes="$nodes"
                 )
).finalize()

provider = en.G5k(conf)
roles, _ = provider.init()

' > ~/OAR.py

python3 ~/OAR.py

EOF

