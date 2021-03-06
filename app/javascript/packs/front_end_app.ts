import Vue from "vue";
import BootstrapVue from 'bootstrap-vue'

import App from '../app'
import router from '../router'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

Vue.use(BootstrapVue)

const FrontEndApp = new Vue({
  render: h => h(App),
  router
}).$mount("#app");

export default FrontEndApp;
