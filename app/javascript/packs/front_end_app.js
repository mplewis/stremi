import Vue from "vue";
import App from "../app.vue";

const FrontEndApp = new Vue({
  render: h => h(App)
}).$mount("#app");

export default FrontEndApp;
