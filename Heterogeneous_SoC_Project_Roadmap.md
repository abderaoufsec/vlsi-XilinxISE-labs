# Heterogeneous SoC Project Roadmap

**Working title:** Design and Verification of a Heterogeneous RISC-V SoC with Hardware Acceleration and a Network-on-Chip (NoC)  
**Context:** M2 Computer & Network Engineering; Xilinx ISE 14.7 VM opens successfully.  
**Hardware:** No board purchased yet. Candidate: Spartan-6 XC6SLX9-2TQG144C AliExpress core board.  
**Budget conversion:** USD 1 = 250 DZD.  
**Rule:** One task at a time; verify each checkpoint before advancing.

## 1. Project vision

Build a working SoC incrementally as both a learning portfolio and a possible M2 capstone/thesis. Begin with simulation. Add physical FPGA testing only after the exact board revision, power, pinout, and programming path are verified.

Long-term components:
- Small RISC-V soft-core CPU running a simple program.
- Instruction/data memory.
- Hardware accelerator: first a small arithmetic/checksum block; later possibly Sobel image edge detection.
- Interconnect: first a simple bus or valid/ready handshake; later an optional 2x2 Network-on-Chip (NoC).
- Testbenches, reproducible experiments, and performance measurements.

A working CPU + one accelerator + simple interface is a valid fallback. Do not let the ambitious NoC prevent completion.

## 2. Architecture concept

```text
+-------------------+       +-----------------------+
| RISC-V soft CPU   |------>| Interconnect          |
| program execution |       | first: simple bus     |
+-------------------+       | later: 2x2 NoC mesh   |
                            +----+--------------+---+
                                 |              |
                         +-------v----+   +-----v-------------+
                         | Memory     |   | Accelerator       |
                         | instr/data |   | arithmetic/Sobel  |
                         +------------+   +-------------------+
```

## 3. Compatibility constraints

- ISE 14.7 supports selected legacy FPGA families. XC6SLX9 is a Spartan-6 candidate, but the exact chip marking, package, speed grade, board revision, and target part must be verified.
- Simulation does not require a physical FPGA.
- Never reuse pin assignments/UCF files from a similar-looking board unless the schematic and revision match.
- Keep the first workspace inside the VM filesystem.
- Do not buy the board until the seller confirms the exact programmer and power requirements.

## 4. Milestones

### M0 — Environment and workspace
Create:

```text
heterogeneous-soc/
├── README.md
├── docs/                 # architecture, decisions, experiment log
├── rtl/
│   ├── combinational/
│   ├── sequential/
│   ├── alu/
│   ├── memory/
│   ├── cpu/
│   ├── accelerator/
│   └── interconnect/
├── sim/tb/
├── constraints/
├── reports/
└── milestones/
```

Confirm ISE opens, a project can be created, and the simulator is available.

**Exit criterion:** project and source paths are known; simulation works.

### M1 — Combinational logic
Build half adder, full adder, 2:1/4:1 multiplexers, decoder, then a small ALU. For each module: define inputs/outputs, write HDL, write a testbench, test meaningful input combinations, inspect waveforms, record expected results.

**Exit criterion:** full-adder and multiplexer testbenches pass.

### M2 — Sequential logic
Build D flip-flop, register, counter, and finite-state machine. Test clock edges, reset, transitions, and boundary cases.

**Exit criterion:** counter and FSM simulations pass.

### M3 — ALU
Start with ADD, SUB, AND, OR, XOR, and zero flag. Add shifts/carry/overflow only after the base works. Document signed/unsigned behavior.

**Exit criterion:** testbench covers every supported operation and edge cases.

### M4 — CPU and memory
Study program counter, instruction fetch/decode, register file, ALU, control unit, data memory, and write-back. Start from a small known RISC-V core or a simple multicycle core; do not begin with a five-stage pipeline from scratch. Before reusing open-source code, inspect its license, HDL dialect, memory assumptions, and ISE compatibility.

**Exit criterion:** a tiny program/instruction sequence produces expected register or memory results in simulation.

### M5 — Accelerator
Start with an arithmetic or checksum accelerator. If time permits, implement Sobel edge detection on a small grayscale image. Define input/output format, start, busy/done, and error behavior. Compare output with a reference model.

**Exit criterion:** testbench results match the reference.

### M6 — CPU/accelerator integration
Use a simple bus or valid/ready interface. Example registers: CONTROL/START, STATUS/BUSY/DONE, input address/data, output address/data. Test reset, repeated jobs, start-while-busy, and completion.

**Exit criterion:** CPU program starts the accelerator and retrieves the right result.

### M7 — NoC
Progress in order:
1. Define packet fields and destination addressing.
2. Test one router.
3. Connect two endpoints.
4. Implement a 2x2 mesh with deterministic XY routing.
5. Add buffers/backpressure and traffic generators.
6. Only then consider adaptive routing.

Measure packet delivery, latency, throughput under defined traffic, and packet loss.

**Exit criterion:** packets reach correct endpoints in documented tests.

### M8 — System demo
**Minimum viable result:** CPU/controller + memory + accelerator + interface + end-to-end simulation.  
**Advanced result:** RISC-V + accelerator + 2x2 NoC + traffic experiments.  
Physical-board demo is optional. Start with one documented LED/GPIO or serial output before attempting the full SoC.

### M9 — Potential thesis evaluation
Possible research question: *Under a defined workload and resource budget, what are the trade-offs between a simple shared interconnect and a small packet-switched NoC for a heterogeneous FPGA SoC?*

Compare bus vs mesh, traffic sources, packet sizes, traffic loads, latency, throughput, packet loss, and synthesis/resource/timing reports if available. Do not assume a NoC is faster; measure it. Get supervisor approval before calling this an approved thesis topic.

## 5. Working rules

- Test modules independently before integration.
- Commit each passing milestone to Git.
- Record tool versions, parameters, expected/actual results, and warnings.
- A module is not done merely because it compiles: it needs a testbench and evidence.
- Respect licenses and notices for reused code.
- Keep a working fallback.
- Use one primary HDL initially.

## 6. Board budget checkpoint

The AliExpress screenshot showed $17.87 for the core board and $7.69 shipping. At 250 DZD/USD, board + shipping = $25.56 ≈ 6,390 DZD before taxes or accessories. User-reported extras: converter +$8, 10-pin downloader +$10, 14-pin downloader +$8. These are screenshot/user figures, not verified checkout totals. The word “converter” is ambiguous.

Do not buy until the seller confirms exact revision, schematic, power input, configuration method, exact programmer/pinout, ISE 14.7 iMPACT compatibility, included cables, and final Algeria shipping total.

## 7. Immediate next actions

1. Pause device selection until the target part/board is settled; simulation can proceed without hardware.
2. Create `~/heterogeneous-soc/01_foundation/`.
3. Build a tiny combinational circuit and testbench.
4. Verify simulation and inspect waveform.
5. Continue: combinational logic → sequential logic → ALU → CPU/memory → accelerator → interface → NoC.
6. Verify hardware documentation before ordering.
