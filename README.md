# Shallow Water Equation Approximation

## Project Overview
This project focuses on the numerical approximation of the shallow water equations, utilizing FreeFEM++ for simulation purposes and MATLAB for subsequent post-processing and visualization. The primary goal is to model water dynamics in storm tide scenarios to enhance understanding and prediction capabilities.

## Getting Started

### Prerequisites
- FreeFEM++: Ensure FreeFEM++ is installed on your system. [Download FreeFEM++](https://freefem.org/)
- MATLAB: You will need MATLAB for running post-processing scripts. Ensure you have it installed. [Get MATLAB](https://www.mathworks.com/products/matlab.html)

### Installation
Clone the repository to your local machine using:
```bash
git clone https://github.com/LDBreton/Shallow_watter_itt.git
```

### File Structure
- `Shallow_watter_linear.edp`: Main FreeFEM++ script for running simulations.
- `Topografia_post.m`: MATLAB script for visualizing the output and overlaying results on geographic data.
- `Puerto_vallarta.xyz`, `Mesh_post.m`, `wave_post.m`: Additional data and scripts for processing and visualization.

## Usage
1. **Running the Simulation**
   Navigate to the project directory and run the FreeFEM++ simulation:
```bash
FreeFem++ Shallow_watter_linear.edp
```

2. **Post-processing**
Open MATLAB and run the post-processing scripts to visualize the results:
```bash
run('Topografia_post.m')
```
