from django.urls import path, include


urlpatterns = [
	path("example/", include("api.example.urls"))  
]
