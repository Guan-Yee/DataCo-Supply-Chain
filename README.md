# DataCo Supply Chain

## Repository Structure

```
DataCo-Supply-Chain/
│
├── data/
│   ├── processed/
│   │   └── # Contains cleaned and transformed data ready for analysis in csv and sql format
│   └── raw/
│       └── # Contains original, unmodified data files as received from the Mendeley Data source
│
├── docs/
│   ├── presentation/
│   │   └── # DataCo Analysis presentation deck in pptx and pdf formats
│   └── reports/
│       └── # Documentation to install PostgreSQL 17, load SQL files and connect PostgreSQL 17 to PowerBI
│
├── powerbi/
│   └── # Contains Power BI files for data visualization and reporting dashboards
│
├── scripts/
│   ├── python/
│   │   └── # Holds Python scripts for converting the DataCo dataset in Dimension and Fact Table format
│   └── sql/
│       └── # Contains SQL queries and scripts for data extraction and transformation
│
└── README.md
    └── # Repository overview, including purpose, folder descriptions, and setup instructions
```

## Cloning the Repository

To clone this repository, use the following command:

```sh
git clone https://github.com/Guan-Yee/DataCo-Supply-Chain
```

## Documentation

This section contains detailed instructions on how to set up PostgreSQL 17 and connect it to PowerBI for analyzing the DataCo Supply Chain dataset. The documents cover installation steps, configuration tips, and troubleshooting advice.
- [DataCo Supply Chain Documentation](https://github.com/Guan-Yee/DataCo-Supply-Chain/blob/main/docs/reports/Documentation.pdf)

## Insights

The insights section provide a comprehensive analysis of the DataCo Supply Chain dataset with Power BI, covering:
- Market sales and customer profiles
- Profit margins across order markets and products
- On-time performance (OTP) of various shipping methods
- Fraud analytics based on order status

The analysis could be found here
- [DataCo Supply Chain Analytics](https://github.com/Guan-Yee/DataCo-Supply-Chain/blob/main/docs/analysis/DataCo%20Supply%20Chain%20Analysis.pdf)

The PowerBI report could be found here
- [DataCo Supply Chain PowerBI report](https://github.com/Guan-Yee/DataCo-Supply-Chain/blob/main/powerbi/DataCo-Supply-Chain-Analysis.pbix)

## Reference

- Constante, Fabian; Silva, Fernando; Pereira, António (2019), “DataCo SMART SUPPLY CHAIN FOR BIG DATA ANALYSIS”, Mendeley Data, V3, [doi: 10.17632/8gx2fvg2k6.3](https://data.mendeley.com/datasets/8gx2fvg2k6/3)
