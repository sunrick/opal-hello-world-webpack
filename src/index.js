import Vue from 'vue/dist/vue.js'
import VueRouter from 'vue-router'
window.Vue = Vue

import load from 'index.rb'


load()

Opal.load('src/index')
