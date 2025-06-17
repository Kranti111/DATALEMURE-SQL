-- Unfinished Parts (Tesla SQL Interview Question)
-- Determine which parts have begun the assembly process but are not yet finished

SELECT part, assembly_step 
FROM parts_assembly
WHERE finish_date IS NULL;
