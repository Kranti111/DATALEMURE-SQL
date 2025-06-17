# Data Science Skills – SQL Practice (DataLemur)

**📝 Problem**  
You're hiring for a Data Science role and want to find candidates who are proficient in **Python**, **Tableau**, and **PostgreSQL**.  
Write a SQL query to find such candidates and return their IDs sorted in ascending order.

**📊 Table: `candidates`**
| Column Name    | Type    |
|----------------|---------|
| candidate_id   | integer |
| skill          | varchar |

**🧠 Sample Input:**
| candidate_id | skill       |
|--------------|-------------|
| 123          | Python      |
| 123          | Tableau     |
| 123          | PostgreSQL  |
| 234          | R           |
| 234          | PowerBI     |
| 234          | SQL Server  |
| 345          | Python      |
| 345          | Tableau     |

**✅ Output:**
| candidate_id |
|--------------|
| 123          |

**📌 SQL Solution:**
```sql
SELECT candidate_id 
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id 
HAVING COUNT(skill) = 3;
```

**📚 Source:** [DataLemur - Data Science Skills](https://datalemur.com/questions/data-science-skills)
