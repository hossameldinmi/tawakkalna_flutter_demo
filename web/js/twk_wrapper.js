async function generateTokenJs(){
    var response=await window.TWK.generateToken();
    return JSON.stringify(response.result, null, 2);
  }
  async function getUserIdJs(){
      
    var response=await window.TWK.getUserId();
    return JSON.stringify(response.result, null, 2);
   
  }
  