# Unfinished Parts – SQL Practice (DataLemur)

**📝 Problem**  
Tesla is analyzing production bottlenecks. You are given a table of parts currently going through the assembly process.  
Write a query to determine which parts **have started but are not yet finished**.  

A part is considered *unfinished* if its `finish_date` is NULL.

**📊 Table: `parts_assembly`**
| Column Name    | Type      |
|----------------|-----------|
| part           | string    |
| finish_date    | datetime  |
| assembly_step  | integer   |

**🧠 Sample Output:**
| part    | assembly_step |
|---------|----------------|
| bumper  | 2              |

**📌 SQL Solution:**
```sql
SELECT part, assembly_step 
FROM parts_assembly
WHERE finish_date IS NULL;
```

**📚 Source:** [DataLemur - Unfinished Parts](https://datalemur.com/questions/unfinished-parts)
