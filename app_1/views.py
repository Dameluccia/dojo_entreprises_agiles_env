from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.mail import send_mail

from accounts.models import MyProfile
from timelinejs.models import Timeline, TimelineEvent
from forms import ContactForm







def homepage(request):

    timeline = Timeline.objects.get(id=1)

    timeline_event= timeline.timelineevent_set.all().order_by("-start_date")

    if timeline_event >= 2:
        return render(  request,
                        "homepage.html",
                        {"timeline_event_next":timeline_event[0], "timeline_event_last":timeline_event[1]})
    else :
        return render(request, "homepage.html")


def discussions(request):
    return render(request, "discussions.html")


def portrait(request):
    profiles = MyProfile.objects.all()
    return render(request,
                  "portrait.html",
                  {"profiles" : profiles})


def savoirs(request):
    return render(request, "savoirs.html")


def contact(request):
    if request.method == "POST":
        contact_form = ContactForm(request.POST)
        if contact_form.is_valid():
            full_name = contact_form.cleaned_data["full_name"]
            email = contact_form.cleaned_data["email"]
            subject = contact_form.cleaned_data["subject"]
            message = contact_form.cleaned_data["message"]
            send_mail(subject, message, email, ["admin@plop.fr"], fail_silently=False)
            return HttpResponseRedirect("/contact/merci")
    else:
        contact_form = ContactForm()
    return render(request, "contact.html", {"form":contact_form})
