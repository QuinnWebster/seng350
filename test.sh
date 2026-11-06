for f in server_run_300_0.log server_run_600_0.log server_run_600_50.log server_run_600_100.log; do
  echo "$f"
  grep -A 3 "=== EXPERIMENT RUN RESULTS ===" "$f"
  echo "Dispatches: $(grep -c 'dispatching general interest' "$f")"
  echo
done