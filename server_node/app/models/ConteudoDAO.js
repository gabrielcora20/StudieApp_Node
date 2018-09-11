function ConteudoDAO(connection){
	this._connection = connection;
}

ConteudoDAO.prototype.getConteudos = function(callback){
	this._connection.query('SELECT * FROM TB_CONTEUDO',callback);
}

module.exports = function(){
	return ConteudoDAO;
}