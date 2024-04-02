samples="/srv/storage/oceania@storage2.lille.grid5000.fr/npilquinao/ISP/2carbapenemase/samples"
out="/home/npilquinao/BEM-ISP/ResFinder"
databases="/srv/storage/oceania@storage2.lille.grid5000.fr/npilquinao/ISP/2carbapenemase/resfinder_databases"

# VA61_2022
python -m resfinder\
    --inputfastq\
        $samples/VA61_2022/61_22_S82_R1_001.fastq.gz\
        $samples/VA61_2022/61_22_S82_R2_001.fastq.gz\
    --outputPath $out/VA61_2022/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA1046_2020
python -m resfinder\
    --inputfastq\
        $samples/VA1046_2020/S63_R1.fastq.gz\
        $samples/VA1046_2020/S63_R2.fastq.gz\
    --outputPath $out/VA1046_2020/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA1101_2021
python -m resfinder\
    --inputfastq\
        $samples/VA1101_2021/1101_21_S87_R1_001.fastq.gz\
        $samples/VA1101_2021/1101_21_S87_R2_001.fastq.gz\
    --outputPath $out/VA1101_2021/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA1184_2021
python -m resfinder\
    --inputfastq\
        $samples/VA1184_2021/1184_21_S88_R1_001.fastq.gz\
        $samples/VA1184_2021/1184_21_S88_R2_001.fastq.gz\
    --outputPath $out/VA1184_2021/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA1565_2021
python -m resfinder\
    --inputfastq\
        $samples/VA1565_2021/1565_21_S75_R1_001.fastq.gz\
        $samples/VA1565_2021/1565_21_S75_R2_001.fastq.gz\
    --outputPath $out/VA1565_2021/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA1788_2021
python -m resfinder\
    --inputfastq\
        $samples/VA1788_2021/S78_R1.fastq.gz\
        $samples/VA1788_2021/S78_R2.fastq.gz\
    --outputPath $out/VA1788_2021/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA2067_2020
python -m resfinder\
    --inputfastq\
        $samples/VA2067_2020/2067_20_S67_R1_001.fastq.gz\
        $samples/VA2067_2020/2067_20_S67_R2_001.fastq.gz\
    --outputPath $out/VA2067_2020/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA2464_2020
python -m resfinder\
    --inputfastq\
        $samples/VA2464_2020/VA2464_20_R1_trim.fastq.gz\
        $samples/VA2464_2020/VA2464_20_R2_trim.fastq.gz\
    --outputPath $out/VA2464_2020/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA2588_2020
python -m resfinder\
    --inputfastq\
        $samples/VA2588_2020/S69_R1.fastq.gz\
        $samples/VA2588_2020/S69_R2.fastq.gz\
    --outputPath $out/VA2588_2020/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA418_2022
python -m resfinder\
    --inputfastq\
        $samples/VA418_2022/S72_R1.fastq.gz\
        $samples/VA418_2022/S72_R2.fastq.gz\
    --outputPath $out/VA418_2022/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA585_2022
python -m resfinder\
    --inputfastq\
        $samples/VA585_2022/S85_R1.fastq.gz\
        $samples/VA585_2022/S85_R2.fastq.gz\
    --outputPath $out/VA585_2022/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

# VA692_2022
python -m resfinder\
    --inputfastq\
        $samples/VA692_2022/S80_R1.fastq.gz\
        $samples/VA692_2022/692_22_S80_R2_001.fastq.gz\
    --outputPath $out/VA692_2022/\
    --acquired --disinfectant\
    --db_path_res $databases/resfinder_db\
    --db_path_disinf $databases/disinfinder_db &

wait

echo "empanadas"