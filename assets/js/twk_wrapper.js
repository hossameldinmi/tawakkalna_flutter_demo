
import './twkhelper.js';

const init = () => {

  const generateTokenJs =  async () => {
    var response=await TWK.generateToken();
    return JSON.stringify(response.result, null, 2);
  }
  const getUserIdJs =  async () => {
    var response=await TWK.getUserId();
    return JSON.stringify(response.result, null, 2);
  }

  window._generateTokenJs = generateTokenJs;
  window._getUserIdJs = getUserIdJs;

}

window.onload = () => {
  init();
}