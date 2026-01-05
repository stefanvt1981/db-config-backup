SELECT DISTINCT MethodCode, MethodName, RIGHT(ModuleCode, 1) AS YearGroup
FROM SchoolLicenseModuleHierarchy M WITH (NOEXPAND)
         INNER JOIN ModuleZwitchRootHierarchy R WITH (NOEXPAND) ON M.HierarchyId.IsDescendantOf(R.HierarchyId)=1
WHERE M.SchoolId = 5327 AND M.ModuleCode LIKE 'year%'
  AND (AcceptanceDate IS NOT NULL AND AcceptanceDate <= GETDATE())
  AND (ApprovalDate IS NOT NULL AND ApprovalDate <= GETDATE())
  AND (BeginDate IS NULL OR BeginDate <= GETDATE())
  AND (BlockDate IS NULL OR BlockDate > GETDATE())
  AND (EndDate IS NULL OR EndDate >= GETDATE())