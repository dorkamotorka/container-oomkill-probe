# Troubleshooting Container OOM Kills with eBPF

A simple container oomkill eBPF probe.

Docker image is available on [Dockerhub](https://hub.docker.com/r/ar2pi/container-oomkill-probe).

See the blog post [Troubleshoot Container OOM Kills with eBPF](https://dev.to/ar2pi/troubleshoot-container-oom-kills-with-ebpf-4am).

## Run

```sh
make up
```

Example output:
```
stress-mem-1  | 2025-06-16 04:48:20,706 INFO: Allocating 124 MiB...
probe-1       | 2025-06-16 04:48:20,219 probe="kprobe:oom_kill_process"
probe-1       |   message="Memory cgroup out of memory"
probe-1       |   host_pid="3343964" container_id="82086684a330" command="python3"
probe-1       |   oc_totalpages="32768" oc_chosen_points="32534"
probe-1       |   memcg_memory_usage_pages="32768" memcg_memory_max_pages="32768" memcg_memory_low_pages="16384"
probe-1       |   memcg_swap_current_pages="0" memcg_swap_max_pages="0" memcg_swappiness="60"
probe-1       |   mm_rss_filepages="10" mm_rss_anonpages="32416" mm_rss_swapents="0" mm_rss_shmempages="0"
probe-1       |   mm_pgtables_bytes="442368"
probe-1       |   proc_oom_score_adj="0"
probe-1       |   proc_min_flt="33757" proc_maj_flt="104"
probe-1       |   uptime_ms="3278"
stress-mem-1 exited with code 137
```
