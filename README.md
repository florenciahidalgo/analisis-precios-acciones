#  Stock Market Analysis Dashboard

### Dashboard focused on stock prices analysis, market trends and financial data visualization.

---

## 📌 Overview

This project analyzes historical stock market data from major technology companies using Python-based ETL processes, PostgreSQL data storage, and interactive Power BI dashboards.

The workflow includes data extraction, transformation, financial analysis, and visualization of stock performance indicators such as volatility, daily returns, and accumulated returns.

---

## 📊 Dashboard Preview

![Dashboard Preview](images/dashboard_preview.png)

---

## 🏢 Companies Analyzed

| Ticker | Company |
|--------|--------|
| 🍎 AAPL | Apple |
| 💻 MSFT | Microsoft |
| 🔍 GOOGL | Google |
| 🚗 TSLA | Tesla |

---

## ✨ Main Features

- Automated stock market data extraction with yFinance
- Data cleaning and transformation using Pandas
- PostgreSQL database integration with SQLAlchemy
- Financial trend and volatility analysis
- Daily and cumulative returns calculation
- Interactive Power BI dashboards
- Exploratory analysis with Jupyter Notebook

---

## 🛠 Tech Stack

| Area | Technologies |
|------|--------------|
| Programming | Python |
| Data Processing | Pandas, NumPy |
| Database | PostgreSQL, SQLAlchemy |
| Visualization | Power BI, Matplotlib |
| Analysis | Jupyter Notebook |
| Version Control | Git, GitHub |

---

## 📂 Project Structure

```bash
Dashboard_precios_y_acciones/
│
├── dashboard_de_precios_acc_apple.ipynb
├── informe_de_acciones.pbix
├── analisis.sql
├── stocks.csv
├── requirements.txt
├── README.md
│
├── rendimiento_diario/
├── rendimiento_acumulado/
└── desviacion_estandar/
```

---

## ⚙️ Installation

Clone the repository:

```bash
git clone https://github.com/florenciahidalgo/analisis-precios-acciones.git
```

Install dependencies:

```bash
pip install -r requirements.txt
```

---

## 🚀 Usage

Run the Jupyter Notebook:

```bash
jupyter notebook
```

Or open the Power BI dashboard:

```bash
informe_de_acciones.pbix
```

---

## 📊 Financial Analysis Included

- Stock price evolution
- Daily returns analysis
- Accumulated returns
- Volatility metrics
- Moving averages
- Multi-company comparison
- Market trend visualization

---

## 🗄 PostgreSQL Example Connection

```python
from sqlalchemy import create_engine

engine = create_engine(
    "postgresql+psycopg2://user:password@localhost:5432/stocks_db"
)
```

---

## 👩‍💻 Author

**Florencia Hidalgo**

Data Analyst • BI Developer • Financial Data Analytics

GitHub: https://github.com/florenciahidalgo

---

## 📜 License

This project is licensed under the MIT License.
