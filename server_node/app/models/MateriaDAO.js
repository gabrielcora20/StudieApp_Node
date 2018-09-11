function MateriaDAO(connection){
	this._connection = connection;
}

MateriaDAO.prototype.getMaterias = function(callback){
	this._connection.query('SELECT * FROM TB_MATERIA',callback);
}

module.exports = function(){
	return MateriaDAO;
}