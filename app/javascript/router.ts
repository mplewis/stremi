import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter)

// @ts-ignore
import Home from './pages/home'
// @ts-ignore
import Foo from './pages/foo'
// @ts-ignore
import Bar from './pages/bar'

const routes = [
  { path: "/", component: Home },
  { path: "/foo", component: Foo },
  { path: "/bar", component: Bar }
]

export default new VueRouter({ routes })
