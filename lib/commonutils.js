var cp      = require('child_process');

/**
 *
 * @param cmd
 * @param cb
*/
function executeCommand(cmd,cb){
	var child = cp.exec(cmd ,function(error,stdout,stderr){
		if (stderr){
			cb(false,"Error executing command "+cmd+" with stderr:"+stderr);
		}
		if (error) {
			cb(false,"Error executing command "+cmd+" with error:"+error);
		}
		if(stdout){
			cb(true,cmd+" successfully executed with no errors.",stdout);
		}
	});
}

exports.executeCommand = executeCommand;
