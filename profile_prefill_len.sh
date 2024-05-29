i=16

for n in $(seq 11); do
echo "i = $i"

python benchmarks/benchmark_throughput.py --model 01-ai/Yi-6B-200K --input-len $i --output-len 1 --num-prompts 1 --max-model-len 23312 2>/dev/null  | grep 'time' 

ii=`expr $i \* 2`
i=$ii

done
