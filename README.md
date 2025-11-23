# ⚡ Verilog-Quartus-Fundamentals

This repository contains Verilog HDL code for several core digital logic components, designed and verified for implementation on Intel FPGAs using the **Quartus Prime** development environment. This project serves as a practical demonstration of combinatorial logic, sequential circuits, and advanced arithmetic structures.

---

## 🎯 Project Goals

The primary objective is to implement and functionally verify the following three digital blocks:

1.  **Half Adder:** Simple combinatorial logic.
2.  **32-bit Binary Counter:** A core synchronous sequential circuit.
3.  **3-bit Complex Multiplier:** An advanced arithmetic block utilizing signed multiplication and arithmetic logic.

---

## 💻 Target Hardware and Software

This project is specifically targeted for implementation and testing using the following tools and hardware:

* **Software:** **Quartus Prime Lite Edition** (Provided by Altera/Intel)
* **Target Device (FPGA):** **Cyclone IV EP4CE6E22C8N** (Ensure your Quartus project is configured for this specific device model.)

---

## 📦 Component Implementations

Each component is implemented in its own Verilog module (`.v` file).

### 1. Half Adder (`Half_Adder.v`)

* **Type:** Combinatorial Logic
* **Function:** Calculates the Sum and Carry for the addition of two single-bit inputs ($A$ and $B$).
* **Logic:**
    * `Sum = A ^ B` (XOR)
    * `Carry = A & B` (AND)

### 2. 32-bit Binary Counter (`Counter_32bit.v`)

* **Type:** Synchronous Sequential Logic
* **Function:** Increments a 32-bit register on the positive edge of the clock (`Clk`).
* **Control:** Includes an **Active-High Asynchronous Reset** (`Reset`) to initialize the count to zero immediately, regardless of the clock.

### 3. 3-bit Complex Multiplier (`Complex_Multiplier.v`)

* **Type:** Combinatorial Arithmetic (Utilizes built-in Verilog operators)
* **Function:** Implements the multiplication of two 3-bit complex numbers $A$ and $B$, where $A = A_r + jA_i$ and $B = B_r + jB_i$.
* **Equation:** $Y = (A_r \cdot B_r – A_i \cdot B_i) + j (A_r \cdot B_i + A_i \cdot B_r)$
* **Data Sizing:**
    * Input parts ($A_r, A_i, B_r, B_i$): **3 bits** wide (`[2:0]`)
    * Output parts ($Y_r, Y_i$): **7 bits** wide (`[6:0]`) to accommodate the maximum result from the final 6-bit subtraction/addition.
* **Key Feature:** Uses the **`signed`** keyword and `$signed()` casting in Verilog to handle the signed arithmetic required for the subtraction in the real part ($A_r \cdot B_r – A_i \cdot B_i$).

---

## 🚀 Getting Started with Intel Quartus

To use this code, follow these general steps in the Intel Quartus Prime software:

1.  **Create a New Project:** Start a new project and select the target device: **Cyclone IV EP4CE6E22C8N**.
2.  **Add Source Files:** Add all `.v` files (`Half_Adder.v`, `Counter_32bit.v`, `Complex_Multiplier.v`) to your project.
3.  **Top-Level Module:** Set one of the modules (or a new module that instantiates the others) as the **Top-Level Entity**.
4.  **Functional Simulation:** Use the **ModelSim-Altera Edition** (integrated into Quartus) to create a **Testbench** and verify that the modules behave correctly.
5.  **Synthesis & Fitter:** Run the full compilation to generate the netlist and map the design to the target FPGA hardware.
6.  **Pin Planning:** Assign specific pins on the FPGA package to your module's input/output ports.
7.  **Device Programming:** Program the `.sof` file onto your FPGA board.

---

## 🤝 Contribution

Feel free to clone the repository, test the modules, and suggest improvements or additional components!
