from django.shortcuts import render
from accounts.models import MyProfile
from timelinejs.models import Timeline, TimelineEvent






def homepage(request):

    timeline = Timeline.objects.get(id=1)

    timeline_event= timeline.timelineevent_set.all().order_by('-start_date')

    if timeline_event >= 2:
        return render(request, 'homepage.html',
        {"timeline_event_next":timeline_event[0],"timeline_event_last":timeline_event[1]}
        )
    else :
        return render(request, 'homepage.html')



def discussions(request):
    return render(request, 'discussions.html')

def portrait(request):
    profiles = MyProfile.objects.all()
    return render(request,
                  "portrait.html",
                  {"profiles" : profiles})
