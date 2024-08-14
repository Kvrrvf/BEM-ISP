D="/home/npilquinao/BEM-ISP/group_storage/hybracter/assembly_output/FINAL_OUTPUT/complete/"
O="/home/npilquinao/BEM-ISP/group_storage/amrfinder"

enterobacter=(
    "$D/VA61_final.fasta"
    "$D/VA692_final.fasta"
    "$D/VA1101_final.fasta"
    "$D/VA1184_final.fasta"
    "$D/VA2067_final.fasta"
    "$D/VA2588_final.fasta"
)

klebsiella=(
    "$D/VA418_final.fasta"
    "$D/VA585_final.fasta"
    "$D/VA1046_final.fasta"
    "$D/VA1565_final.fasta"
    "$D/VA1788_final.fasta"
    "$D/VA2464_final.fasta"
)

for assembly in "${enterobacter[@]}"
do
    base=$(basename "$assembly")
    identifier=$(echo $base | cut -d'_' -f1)
    amrfinder\
        --nucleotide "$assembly"\
        --threads 254\
        --plus\
        --name="$identifier"\
        --organism Enterobacter_cloacae > "$O/$identifier.amrfinder"
done

for assembly in "${klebsiella[@]}"
do
    base=$(basename "$assembly")
    identifier=$(echo $base | cut -d'_' -f1)
    amrfinder\
        --nucleotide "$assembly"\
        --threads 254\
        --plus\
        --name="$identifier"\
        --organism Klebsiella_pneumoniae > "$O/$identifier.amrfinder"
done

head -1 $(ls $O/*.amrfinder | head -1) > $O/AMRfinder_results.tsv
grep -h -v 'Protein identifier' $O/*.amrfinder >> $O/AMRfinder_results.tsv