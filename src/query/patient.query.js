const QUERY = {
	SELECT_PATIENTS: 'SELECT * FROM patients ORDER BY create_at DESC LIMIT 100',	
	SELECT_PATIENT: 'SELECT * FROM patients WHERE ID = ?',
	CREATE_PATIENT: 'INSERT INTO patients(first_name, email, addr, diagnose, phone, image_url) VALUES (?, ?, ?, ?, ?, ?)',
	UPDATE_PATIENTS: 'UPDATE patients SET first_name = ?, email = ?, addr = ?, diagnose = ?, phone = ?, image_url = ? WHERE id = ?',
	SELECT_PATIENTS: 'DELETE FROM patients WHERE id = ?',
	CREATE_PATIENT_PROCEDURE: 'CALL create_and_return(?, ?, ?, ?, ?, ?)' 
};

export default QUERY;
