#!/usr/bin/env python3

import argparse
import asyncio
import threading

import numpy as np
import matplotlib.pyplot as plt
import websockets


async def spectrum_loop(line):
    async with websockets.connect("ws://10.193.0.80:9001") as ws:
        while True:
            spec = np.frombuffer(await ws.recv(), 'float32')
            line.set_ydata(spec)


def main_async(line):
    asyncio.run(spectrum_loop(line))


def prepare_plot():
    plt.ion()
    fig = plt.figure()
    ax = fig.add_subplot(111)
    freqs = np.arange(4096)
    line, = ax.plot(freqs, np.zeros(freqs.size))
    ax.set_ylim((-20, 10))
    return fig, ax, line

def main():
    fig, ax, line = prepare_plot()
    loop = threading.Thread(target=main_async, args=(line,))
    loop.start()
    plt.show(block=True)


if __name__ == '__main__':
    main()

