function status =  get_status_recurso(val)
	if(val > 0)
		status = 'abundante';
	else
		status = 'escasso';
	end