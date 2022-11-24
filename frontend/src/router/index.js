import { createRouter, createWebHashHistory } from 'vue-router'
import ListById from '../views/ListById.vue'
import form from '../views/ListForm.vue'
import List from '../views/List.vue'


const routes = [
  {
    path: '/',
    name: 'list',
    component: List
  },
  {
    path: '/Form',
    name: 'form',
    component: form
  },
  {
    path: '/listById',
    name: 'listId',
    component: ListById
  },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
