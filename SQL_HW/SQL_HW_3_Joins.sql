 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name,salary.monthly_salary from employee_salary
    join employees on employee_salary.employee_id = employees.id 
	join salary on employee_salary.salary_id = salary.id;
 --2. ������� ���� ���������� � ������� �� ������ 2000.
 select employees.employee_name,salary.monthly_salary from employee_salary
	join employees on employee_salary.employee_id = employees.id 
	join salary on employee_salary.salary_id = salary.id 
 where salary.monthly_salary <2000;
 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 select employees.id, salary.monthly_salary from employee_salary
	left JOIN employees on employee_salary.employee_id = employees.id 
	left JOIN salary on employee_salary.salary_id = salary.id
where employee_name is null;
 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select e.id ,s.monthly_salary from employee_salary es 
	left JOIN employees e on es.employee_id = e.id 
	left JOIN salary s on es.salary_id = s.id
where e.employee_name is null and s.monthly_salary <2000;
 --5. ����� ���� ���������� ���� �� ��������� ��.
select e.employee_name,s.monthly_salary from employee_salary es 
	full JOIN employees e on es.employee_id = e.id 
	full join salary s on es.salary_id = s.id
where s.id is null;
 --6. ������� ���� ���������� � ���������� �� ���������.
select e.employee_name, r.role_name from roles_employee re 
	join roles r on re.role_id = r.id 
	join employees e on re.employee_id = e.id;
 --7. ������� ����� � ��������� ������ Java �������������.
  select e.employee_name, r.role_name from roles_employee re 
	join roles r on re.role_id = r.id 
	join employees e on re.employee_id = e.id
where r.role_name like '%Java developer%';
 --8. ������� ����� � ��������� ������ Python �������������.
 select e.employee_name, r.role_name from roles_employee re 
	join roles r on re.role_id = r.id 
	join employees e on re.employee_id = e.id
where r.role_name like '%Python%';
 --9. ������� ����� � ��������� ���� QA ���������.
 select employee_name, roles.role_name from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
   	where role_name like '%QA engineer%';
 --10.������� ����� � ��������� ������ QA ���������.
 select employee_name, roles.role_name from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
   	where role_name like '%Manual QA engineer%';
 --11. ������� ����� � ��������� ��������������� QA
 select employee_name, roles.role_name from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
   	where role_name like '%Automation QA engineer%';
 --12. ������� ����� � �������� Junior ������������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Junior%';
 --13. ������� ����� � �������� Middle ������������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Middle%';
 --14. ������� ����� � �������� Senior ������������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Senior%';
 --15. ������� �������� Java �������������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Java developer%';
 --16. ������� �������� Python �������������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Python%';
 --17. ������� ����� � �������� Junior Python �������������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Junior Python%';
 --18. ������� ����� � �������� Middle JS �������������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Middle JavaScript%';  
 --19. ������� ����� � �������� Senior Java �������������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Senior Java developer%';
 --20. ������� �������� Junior QA ���������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	left join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	full outer join salary on salary.id = roles.id
   	where role_name like '%Junior%QA%';
 --21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary) from employees e 
	full join roles_employee re on re.employee_id  = e.id 
	full join roles r on r.id = re.role_id 
	full join employee_salary es on es.employee_id  = e.id 
	join salary s on re.role_id  = s.id 
	where r.role_name like '%Junior%';
 --22. ������� ����� ������� JS �������������
select sum(monthly_salary) from employees e 
	full join roles_employee re on re.employee_id  = e.id 
	full join roles r on r.id = re.role_id 
	full join employee_salary es on es.employee_id  = e.id 
	join salary s on re.role_id  = s.id 
	where r.role_name like '%JavaScript%';
 --23. ������� ����������� �� QA ���������
select min(monthly_salary) from employees e 
	full join roles_employee re on re.employee_id  = e.id 
	full join roles r on r.id = re.role_id 
	full join employee_salary es on es.employee_id  = e.id 
	join salary s on re.role_id  = s.id 
	where r.role_name like '%QA%';
 --24. ������� ������������ �� QA ���������
select max(monthly_salary) from employees e 
	full join roles_employee re on re.employee_id  = e.id 
	full join roles r on r.id = re.role_id 
	full join employee_salary es on es.employee_id  = e.id 
	join salary s on re.role_id  = s.id 
	where r.role_name like '%QA%';
 --25. ������� ���������� QA ���������
select count(role_name) from employees e 
	full join roles_employee re on re.employee_id  = e.id 
	full join roles r on r.id = re.role_id 
	full join employee_salary es on es.employee_id  = e.id 
	join salary s on re.role_id  = s.id 
	where r.role_name like '%QA%';
 --26. ������� ���������� Middle ������������.
select count(role_name) from employees e 
	full join roles_employee re on re.employee_id  = e.id 
	full join roles r on r.id = re.role_id 
	full join employee_salary es on es.employee_id  = e.id 
	join salary s on re.role_id  = s.id 
	where r.role_name like '%Middle%';
 --27. ������� ���������� �������������
select count(role_name) from employees e 
	full join roles_employee re on re.employee_id  = e.id 
	full join roles r on r.id = re.role_id 
	full join employee_salary es on es.employee_id  = e.id 
	join salary s on re.role_id  = s.id 
	where r.role_name like '%developer%';
 --28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) from employees e 
	full join roles_employee re on re.employee_id  = e.id 
	full join roles r on r.id = re.role_id 
	full join employee_salary es on es.employee_id  = e.id 
	join salary s on re.role_id  = s.id 
	where r.role_name like '%developer%';
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, roles.role_name, salary.monthly_salary from employees
 	join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	join salary on salary.id = roles.id
  	order by (monthly_salary);
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, roles.role_name, salary.monthly_salary from employees
 	join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	join salary on salary.id = roles.id
  	where monthly_salary > 1700 and monthly_salary < 2300
  	order by (monthly_salary);
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, roles.role_name, salary.monthly_salary from employees
 	join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	join salary on salary.id = roles.id
  	where monthly_salary < 2300
  	order by (monthly_salary);
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, roles.role_name, salary.monthly_salary from employees
 	join roles_employee on employee_id = employees.id
  	left join roles on roles.id = role_id
  	join salary on salary.id = roles.id
  	where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
  	order by (monthly_salary);
