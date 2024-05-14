-- Antonino Caserta
-- Scrivi una query per trovare (nome, cognome), lavoro, ID reparto e dei dipendenti che lavorano a Londra ed estrarre anche il nome del reparto.
SELECT e.first_name, e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
LEFT JOIN locations l ON d.location_id = l.location_id AND l.city = 'Londra';

-- Scrivi una query per trovare l'ID dipendente, il cognome (last_name) insieme al manager_id e al cognome (last_name).
SELECT e.employee_id, e.last_name AS employee_last_name, e.manager_id, m.last_name AS manager_last_name
FROM employees e 
LEFT JOIN employees m ON e.manager_id = m.employee_id;

-- Scrivi una query per visualizzare nome, cognome, data di assunzione, stipendio del manager per tutti i manager con esperienza superiore a 15 anni.
SELECT e.first_name, e.last_name, e.hire_date, e.salary
FROM employees e
INNER JOIN employees m ON e.manager_id = m.employee_id
WHERE TIMESTAMPDIFF(YEAR, e.hire_date, CURDATE()) > 15;
-- TIMESTAMPDIFF Calcola la differenza in anni tra la data di assunzione e la data attuale
-- CURDATE() Restituisce la data corrente nel formato 'YYYY-MM-DD'

-- Scrivi una query per trovare gli indirizzi (location _id, street_address, city, state_province, country_name) di tutti i dipartimenti.
SELECT l.location_id, l.street_address, l.city, l.state_province, c.country_name
FROM locations l
RIGHT JOIN departments d ON l.location_id = d.location_id
INNER JOIN countries c ON l.country_id = c.country_id;

-- Scrivi una query per visualizzare la cronologia del lavoro che è stata eseguita da quaisiasi did 10000 di stipendinente
SELECT jh.*
FROM job_history jh
INNER JOIN employees e
ON (jh.employee_id = e.employee_id) WHERE salary > 10000;