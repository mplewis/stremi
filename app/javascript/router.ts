import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter)

import Home from './pages/home'
import Foo from './pages/foo'
import Bar from './pages/bar'

const routes = [
  { path: "/", component: Home },
  { path: "/foo", component: Foo },
  { path: "/bar", component: Bar }
]

export default new VueRouter({ routes })
