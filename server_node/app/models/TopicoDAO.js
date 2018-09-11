function TopicoDAO(connection){
	this._connection = connection;
}

TopicoDAO.prototype.getTopicos = function(callback){
	this._connection.query('SELECT * FROM TB_TOPICO',callback);
}

module.exports = function(){
	return TopicoDAO;
}