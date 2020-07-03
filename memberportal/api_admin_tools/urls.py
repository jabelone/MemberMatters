from django.urls import path
from . import views

# all of these urls start with "api/admin/"

urlpatterns = [
    path("members/", views.GetMembers.as_view(), name="GetMembers"),
    path(
        "members/<int:member_id>/state/<str:state>/",
        views.MemberState.as_view(),
        name="MemberState",
    ),
    path(
        "members/<int:member_id>/makemember/",
        views.MakeMember.as_view(),
        name="ActivateMember",
    ),
    path("doors/", views.Doors.as_view(), name="Doors"),
    path("interlocks/", views.Interlocks.as_view(), name="Interlocks"),
]
