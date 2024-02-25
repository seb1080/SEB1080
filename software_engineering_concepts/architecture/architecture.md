# Web Application Architecture


## Stateless web architecture vs. Stateful web architecture

- Stateless: dependent only on the input parameters that are supplied.

- Stateful: relies on the `session state` of some kind stored in a particular server to process the request.

To avoid stateful nature cookies need to be use on the client side.


...SPA,

...PWA


...RESTful API


# Progressive WorkOut Case Study

Front-end     HTTPS request       Back-end                 Database
PWA
Vue.js                          Cloud Functions        Firebase RealTime Database
Vue-router
Vuex                            Firebase Auth

[Hot to structure Vue project](https://itnext.io/how-to-structure-a-vue-js-project-29e4ddc1aeeb)


## Front end Architecture

Example base on the progressiveWorkOut

- main: Set the Vue app.

- root: Can contain the element that repeat on every page, Ex: toolbar, content frame and     router-view

- Pages: Containt the structure of the page

- Smart components that containt logic Ex: TheLoginForm

- Base components: Dumb or Pure comp. that only recieve props and render to the page.

- Functional Components: Comp. is render has a template with props. Func. comp. are not reactive.


# root
  App.vue
                v-toolbar
                v-content
                  router-view
# pages
  LoginPage.vue
                TheLoginForm

  HomePage.vue


  ExercisePage.vue
                ExerciseCreation
                ExerciseList

  MetricPage.vue


  SettingsPage.vue


  ProfilePage.vue


# Reference

[Planing Front End App](https://developer.telerik.com/featured/planning-front-end-javascript-application/)
[Offline-first](https://developer.chrome.com/apps/offline_apps)
[Field Guide to Web App](http://www.html5rocks.com/webappfieldguide/toc/index/)