import { createRouter, createWebHashHistory } from 'vue-router'
import ListById from '../views/ListById.vue'
import form from '../views/ListForm.vue'
import List from '../views/List.vue'
import SignUp from '../views/Signup.vue'


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
  {
    path: '/signUp',
    name: 'signup',
    component: SignUp
  },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
