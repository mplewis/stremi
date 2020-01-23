import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter)

// @ts-ignore
import Home from './pages/home'
// @ts-ignore
import FAQ from './pages/faq'
// @ts-ignore
import Unsub from './pages/unsub'

const routes = [
  { path: "/", component: Home },
  { path: "/faq", component: FAQ },
  { path: "/unsub", component: Unsub },
]

export default new VueRouter({ routes })
