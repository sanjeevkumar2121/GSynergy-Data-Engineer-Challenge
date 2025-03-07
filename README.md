# GSynergy-Data-Engineer-Challenge

## 📌 Overview  
This project builds an end-to-end **ELT pipeline** in Microsoft Fabric Lakehouse, leveraging **PySpark, SQL, and data warehouse best practices**. The pipeline:  
1. **Extracts** data from Azure Blob (Parquet format).  
2. **Performs data validation** (null checks, PK uniqueness, FK constraints).  
3. **Transforms & normalizes data** into staging tables.  
4. **Creates refined reporting tables** (e.g., `mview_weekly_sales`).  
5. **Implements incremental processing logic** for efficient updates.  

## 🛠️ Tech Stack  
- **Cloud**: Microsoft Fabric  
- **Storage**: OneLake (Parquet)  
- **Compute**: PySpark Notebooks  
- **Pipeline**: Microsoft Fabric Data Pipeline  
- **Warehouse**: Fabric Data Warehouse  

## 📂 Project Structure  
```bash
📂 notebooks/             # PySpark scripts for ELT
📂 pipeline/              # Pipeline configurations
📂 SQL/                  # Schema and metadata
