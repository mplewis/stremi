import Vue from "vue";
import VueRouter from 'vue-router'
import BootstrapVue from 'bootstrap-vue'

import App from '../app.vue'
import Foo from '../foo.vue'
import Bar from '../bar.vue'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

Vue.use(VueRouter)
Vue.use(BootstrapVue)

const routes = [
  { path: "/foo", component: Foo },
  { path: "/bar", component: Bar }
];

const router = new VueRouter({ routes });

const FrontEndApp = new Vue({
  render: h => h(App),
  router
}).$mount("#app");

export default FrontEndApp;
