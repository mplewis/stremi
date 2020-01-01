import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter)

import Home from './foo.vue'
import Foo from './foo.vue'
import Bar from './bar.vue'

const routes = [
  { path: "/", component: Home },
  { path: "/foo", component: Foo },
  { path: "/bar", component: Bar }
]

export default new VueRouter({ routes })
