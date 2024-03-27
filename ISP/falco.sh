seq=(
#    VA61_2022
    VA418_2022
    VA585_2022
    VA692_2022
    VA1101_2021
    VA1184_2021
    VA1565_2021
    VA1788_2021
    VA2067_2020
    VA2464_2020
    VA2588_2020
)

for dir in "${seq[@]}"; do
    files=$(ls $dir/*.fastq.gz)
    falco --outdir /home/metagroup/nehuen/ISP/samples/falco/overview $files
done