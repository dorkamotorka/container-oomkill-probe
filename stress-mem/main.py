#!/usr/bin/env python3

import logging
import time

logging.basicConfig(level=logging.INFO, format="%(asctime)s %(levelname)s: %(message)s")

i = 0
memory = []
while True:
    i += 1
    logging.info(f"Allocating {i * 4} MiB...")
    memory.append(bytearray(4 * 1024 * 1024))
    time.sleep(0.1)
