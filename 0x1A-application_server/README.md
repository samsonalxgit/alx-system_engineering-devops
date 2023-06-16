0x1A-application_server
0. Set up development with Python
Let’s serve what we built for AirBnB clone v2 - Web framework on web-01. This task is an exercise in setting up our development environment, which is used for testing and debugging our code before deploying it to production.
1. Set up production with Gunicorn
Now that we have our development environment set up, let’s get our production application server set up with Gunicorn on web-01, port 5000. we’ll need to install Gunicorn and any libraries required by our application. Our Flask application object will serve as a WSGI entry point into our application. This will be our production environment. As we can see we want the production and development of our application to use the same port, so the conditions for serving your dynamic content are the same in both environments.
2. Serve a page with Nginx
Building on our work in the previous tasks, configure Nginx to serve our page from the route /airbnb-onepage/
3. Add a route with query parameters
Building on what we did in the previous tasks, let’s expand our web application by adding another service for Gunicorn to handle. In AirBnB_clone_v2/web_flask/6-number_odd_or_even, the route /number_odd_or_even/int:n should already be defined to render a page telling us whether an integer is odd or even. we’ll need to configure Nginx to proxy HTTP requests to the route /airbnb-dynamic/number_odd_or_even/(any integer) to a Gunicorn instance listening on port 5001. The key to this exercise is getting Nginx configured to proxy requests to processes listening on two different ports. We are not expected to keep our application server processes running. If we want to know how to run multiple instances of Gunicorn without having multiple terminals open, see tips below.
4. Let's do this for your API
Let’s serve what we built for AirBnB clone v3 - RESTful API on web-01.
