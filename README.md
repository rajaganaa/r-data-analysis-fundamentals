# R Data Analysis Fundamentals

![R](https://img.shields.io/badge/Language-R-blue?logo=r&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Skill-Data%20Analysis-green)
![Status](https://img.shields.io/badge/Status-Educational-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

## 📊 Business Use Case

In the data-driven world, **R remains a powerhouse for statistical analysis and data visualization**. Mastering R is essential for data scientists and statisticians to unlock insights from complex datasets. This repository serves as a **comprehensive code reference and educational toolkit**, designed to accelerate the learning curve for:

- **Data Analysts**: Transitioning from spreadsheets to programmatic analysis.
- **Researchers**: Performing rigorous statistical testing and data manipulation.
- **Students**: Building a strong foundation in vector arithmetic, data frames, and visualization.

---

## 🏗️ Architecture

The project is structured as a modular learning pipeline, progressing from core syntax to advanced data manipulation:

```
┌─────────────────────────────────────────────────────────────┐
│                    R PROGRAMMING ENVIRONMENT                 │
│             (RStudio / R Console Execution Flow)            │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────────────┐
│  🔹 MODULE 1: CORE FUNDAMENTALS                             │
│  • Vector Arithmetic & Logical Operations                   │
│  • Matrix Manipulation & Linear Algebra                     │
│  • Control Flow (If-Else Logic)                             │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────────────┐
│  🔹 MODULE 2: DATA ETL (Extract, Transform, Load)           │
│  • Data Frames: Creation, Merging, & Filtering              │
│  • Dplyr: Select, Mutate, Filter, Arrange, Summarize        │
│  • Aggregation: GroupBy operations on 'mtcars', 'iris'      │
└──────────────────────┬──────────────────────────────────────┘
                       │
                       ▼
┌─────────────────────────────────────────────────────────────┐
│  🔹 MODULE 3: VISUALIZATION & FUNCTIONS                     │
│  • GGPlot2: Scatter plots, Histograms                       │
│  • Custom Functions: Modular code design                    │
│  • Statistical Analysis: Mean, Sum, Factor levels           │
└─────────────────────────────────────────────────────────────┘
```

---

## ✨ Features

### 🧬 **Core R Concepts**
- **Vector & Matrix Operations**: Hands-on examples of vector recycling, matrix multiplication, and element-wise calculations.
- **Data Structures**: Deep dive into Lists, Factors, and Data Frames.

### 🛠️ **Advanced Data Manipulation**
- **Dplyr Mastery**: Practical examples of the "grammar of data manipulation" (`%>%` pipe operator, `filter`, `select`, `mutate`).
- **Data Cleaning**: Handling missing values (`NA`) in datasets like `airquality`.
- **Merging & Joining**: SQL-style joins on data frames.

### 📈 **Statistical Visualization**
- **GGPlot2 Integration**: Creating publication-quality plots (e.g., MPG vs. Horsepower).
- **Exploratory Data Analysis (EDA)**: Analyzing standard datasets (`mtcars`, `iris`) to uncover trends.

---

## 💻 Tech Stack

| Category | Technologies |
|----------|-------------|
| **Language** | R |
| **Libraries** | `dplyr`, `ggplot2`, `datasets` |
| **IDE** | RStudio (Recommended) |

---

## 📦 Installation

### Prerequisites
- [R](https://cran.r-project.org/) (4.0 or higher)
- [RStudio Desktop](https://posit.co/download/rstudio-desktop/) (Optional but recommended)

### Setup Steps

1. **Clone the repository**:
   ```bash
   git clone git@github.com:rajaganaa/r-data-analysis-fundamentals.git
   cd r-data-analysis-fundamentals
   ```

2. **Install Required Packages**:
   Open your R console or RStudio and run:
   ```r
   install.packages("dplyr")
   install.packages("ggplot2")
   ```

3. **Run the Scripts**:
   You can source the scripts directly in R:
   ```r
   source("src/01_basics.R")
   source("src/02_data_etl.R")
   ```

---

## 📝 License

This project is open-source and available for educational purposes.

---

## 👤 Author

**Rajaganapathy M**  
GitHub: [@rajaganaa](https://github.com/rajaganaa)  
Email: rajaganaa@gmail.com

---

**Built with ❤️ for the R Stats Community**
