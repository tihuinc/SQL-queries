select e.Name as 'Employee', e2.Name as 'boss', e.Salary as 'employee salary', e2.Salary 'boss salary' from Employees e 
  inner join Employees e2 on e.BossID = e2.EmployeeID 
  where e.Salary > e2.Salary;

select e.Name as 'Employee', d.Name as 'Department', e.Salary as 'Salary' from Employees e
  inner join Departments on e.DepartmentID = d.DepartmentID
  group by d.DepartmentId
  order by e.Salary DESC;

select d.Name as 'Department' from Departments d
  inner join Employees on e.DepartmentId = d.DepartmentID
  group by d.DepartmentID
  having COUNT(e.EmployeeId) < 3;


