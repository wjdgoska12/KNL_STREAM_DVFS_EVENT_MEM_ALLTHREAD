#! /bin/bash


echo "wku6296" | sudo -kS cpupower frequency-set -f 1401000
sleep 10

perf stat -x , -o event_turbo_stream_256T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_turbo_stream_128T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_turbo_stream_64T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_turbo_stream_256T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_turbo_stream_128T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_turbo_stream_64T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3

echo "wku6296" | sudo -kS cpupower frequency-set -f 1400000
sleep 10

perf stat -x , -o event_14GH_stream_256T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_14GH_stream_128T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_14GH_stream_64T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_14GH_stream_256T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_14GH_stream_128T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_14GH_stream_64T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3


echo "wku6296" | sudo -kS cpupower frequency-set -f 1300000
sleep 10
perf stat -x , -o event_13GH_stream_256T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_13GH_stream_128T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_13GH_stream_64T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_13GH_stream_256T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_13GH_stream_128T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_13GH_stream_64T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3



echo "wku6296" | sudo -kS cpupower frequency-set -f 1200000
sleep 10
perf stat -x , -o event_12GH_stream_256T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_12GH_stream_128T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_12GH_stream_64T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_12GH_stream_256T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_12GH_stream_128T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_12GH_stream_64T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3

echo "wku6296" | sudo -kS cpupower frequency-set -f 1100000
sleep 10
perf stat -x , -o event_11GH_stream_256T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_11GH_stream_128T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_11GH_stream_64T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_11GH_stream_256T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_11GH_stream_128T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_11GH_stream_64T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3



echo "wku6296" | sudo -kS cpupower frequency-set -f 1000000
sleep 10
perf stat -x , -o event_1GH_stream_256T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_1GH_stream_128T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o event_1GH_stream_64T -e cycles,instructions,uops_retired.scalar_simd,uops_retired.packed_simd,rs_full_stall.all,L1-dcache-load-misses,L1-icache-load-misses,L1-icache-loads,LLC-loads,LLC-stores,branch-load-misses,branch-loads,dTLB-load-misses,iTLB-load-misses,iTLB-loads mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_1GH_stream_256T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 256 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_1GH_stream_128T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 128 /chome/wkucslab02/stream_mpi/stream.def
sleep 3
perf stat -x , -o mem_1GH_stream_64T -e uncore_imc_0/event=0x03,umask=0x01/,uncore_imc_0/event=0x03,umask=0x02/,uncore_imc_1/event=0x03,umask=0x01/,uncore_imc_1/event=0x03,umask=0x02/,uncore_imc_2/event=0x03,umask=0x01/,uncore_imc_2/event=0x03,umask=0x02/,uncore_imc_3/event=0x03,umask=0x01/,uncore_imc_3/event=0x03,umask=0x02/,uncore_imc_4/event=0x03,umask=0x01/,uncore_imc_4/event=0x03,umask=0x02/,uncore_imc_5/event=0x03,umask=0x01/,uncore_imc_5/event=0x03,umask=0x02/ mpirun -np 64 /chome/wkucslab02/stream_mpi/stream.def
sleep 3

