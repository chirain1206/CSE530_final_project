kernels=("mat_mul" "nw")
mat_mul_workload=(100 200 300 400)
nw_workload=(128 192 256 320 384)
layers=(0 1 2 3)

source /home/other/CSE530-FA2022/condarc
source /home/other/CSE530-FA2022/.gpgpusimrc
conda activate gpgpu
source gpgpu-sim_distribution/setup_environment

for kernel in "${kernels[@]}"
do
	if [ "$kernel" = "mat_mul" ]
	then
		for workload in "${mat_mul_workload[@]}"
		do
			for layer in "${layers[@]}"
			do
				echo ""
				echo "$kernel $workload $layer"
				echo ""
				bash ./automate.sh "$workload" "$layer" ./power_logs/${kernel}_${workload}.log "$kernel"
			done
		done
	fi

        if [ "$kernel" = "nw" ]
        then
                for workload in "${nw_workload[@]}"
                do
                        for layer in "${layers[@]}"
                        do
                                echo ""
                                echo "$kernel $workload $layer"
                                echo ""
                                bash ./automate.sh "$workload" "$layer" ./power_logs/${kernel}_${workload}.log "$kernel"
                        done
                done
        fi
done
