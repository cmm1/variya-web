import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import store from './stores'
import router from './router'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import './styles/index.scss'

createApp(App).use(router).use(ElementPlus).use(store).mount('#app')
