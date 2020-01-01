import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter)

import Home from './home'
import Foo from './foo'
import Bar from './bar'

const routes = [
  { path: "/", component: Home },
  { path: "/foo", component: Foo },
  { path: "/bar", component: Bar }
]

export default new VueRouter({ routes })
