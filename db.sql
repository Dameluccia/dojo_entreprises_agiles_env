CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2016-05-03 13:17:15.833871');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2016-05-03 13:17:16.001230');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2016-05-03 13:17:16.159077');
INSERT INTO "django_migrations" VALUES(4,'admin','0002_logentry_remove_auto_add','2016-05-03 13:17:16.325704');
INSERT INTO "django_migrations" VALUES(5,'contenttypes','0002_remove_content_type_name','2016-05-03 13:17:16.588900');
INSERT INTO "django_migrations" VALUES(6,'auth','0002_alter_permission_name_max_length','2016-05-03 13:17:16.743906');
INSERT INTO "django_migrations" VALUES(7,'auth','0003_alter_user_email_max_length','2016-05-03 13:17:16.916373');
INSERT INTO "django_migrations" VALUES(8,'auth','0004_alter_user_username_opts','2016-05-03 13:17:17.053575');
INSERT INTO "django_migrations" VALUES(9,'auth','0005_alter_user_last_login_null','2016-05-03 13:17:17.186305');
INSERT INTO "django_migrations" VALUES(10,'auth','0006_require_contenttypes_0002','2016-05-03 13:17:17.241677');
INSERT INTO "django_migrations" VALUES(11,'auth','0007_alter_validators_add_error_messages','2016-05-03 13:17:17.386190');
INSERT INTO "django_migrations" VALUES(12,'sessions','0001_initial','2016-05-03 13:17:17.507532');
INSERT INTO "django_migrations" VALUES(13,'timelinejs','0001_initial','2016-05-03 13:32:01.742178');
INSERT INTO "django_migrations" VALUES(14,'timelinejs','0002_auto_20160215_1611','2016-05-03 13:32:01.920585');
INSERT INTO "django_migrations" VALUES(15,'sites','0001_initial','2016-05-04 09:16:53.584811');
INSERT INTO "django_migrations" VALUES(16,'sites','0002_alter_domain_unique','2016-05-04 09:16:53.591599');
INSERT INTO "django_migrations" VALUES(17,'accounts','0001_initial','2016-05-04 09:44:53.726220');
INSERT INTO "django_migrations" VALUES(18,'easy_thumbnails','0001_initial','2016-05-04 09:44:53.849610');
INSERT INTO "django_migrations" VALUES(19,'easy_thumbnails','0002_thumbnaildimensions','2016-05-04 09:44:53.856721');
INSERT INTO "django_migrations" VALUES(20,'guardian','0001_initial','2016-05-04 09:44:53.920611');
INSERT INTO "django_migrations" VALUES(21,'userena','0001_initial','2016-05-04 09:44:53.942355');
INSERT INTO "django_migrations" VALUES(22,'userena','0002_auto_20160504_1144','2016-05-04 09:44:53.977513');
INSERT INTO "django_migrations" VALUES(23,'userena','0002_auto_20160511_1521','2016-05-11 13:21:40.765704');
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
INSERT INTO "django_admin_log" VALUES(1,'1','2016-05-03 - dojo',1,'Ajout. timeline event « 2016-05-22 - 2016-05-22 Les méthodes agiles » ajouté. timeline event « 2016-06-12 - 2016-06-12 Gestion du panier vide » ajouté.',7,1,'2016-05-03 13:38:30.035585');
INSERT INTO "django_admin_log" VALUES(2,'2','2014-05-22 - 2014-05-22 Gestion du panier vide',2,'Modification de start_date, end_date, text et location.',8,1,'2016-05-11 11:58:18.451010');
INSERT INTO "django_admin_log" VALUES(3,'2','2014-05-22 - 2014-05-22 Gestion du panier vide',2,'Modification de text et location.',8,1,'2016-05-11 11:58:51.888663');
INSERT INTO "django_admin_log" VALUES(4,'2','2014-05-22 - 2014-05-22 Management / Logistique',2,'Modification de headline et location.',8,1,'2016-05-11 12:07:58.776653');
INSERT INTO "django_admin_log" VALUES(5,'1','2014-06-12 - 2014-06-12 Les méthodes agiles',2,'Modification de start_date, end_date, text et location.',8,1,'2016-05-11 12:10:34.583453');
INSERT INTO "django_admin_log" VALUES(6,'3','2014-06-12 - 2014-06-12 ',1,'Ajout.',8,1,'2016-05-11 12:12:50.497886');
INSERT INTO "django_admin_log" VALUES(7,'1','2016-05-03 - dojo',2,'Modification de center_on et text. timeline event « 2014-07-08 - 2014-07-08  » ajouté. headline et location modifié pour timeline event « 2014-06-12 - 2014-06-12 Logistique ». location modifié pour timeline event « 2014-05-22 - 2014-05-22 Management / Logistique ». headline, text et location modifié pour timeline event « 2014-06-12 - 2014-06-12 CMS / Freelance ».',7,1,'2016-05-11 12:22:58.020332');
INSERT INTO "django_admin_log" VALUES(8,'1','2016-05-03 - dojo',2,'Modification de center_on. location modifié pour timeline event « 2014-06-12 - 2014-06-12 Logistique ». location modifié pour timeline event « 2014-05-22 - 2014-05-22 Management / Logistique ». location modifié pour timeline event « 2014-06-12 - 2014-06-12 CMS / Freelance ». headline, text et location modifié pour timeline event « 2014-07-08 - 2014-07-08 Technologie / Savoir faire ».',7,1,'2016-05-11 12:25:56.949369');
INSERT INTO "django_admin_log" VALUES(9,'1','2016-05-03 - dojo',2,'Modification de center_on. timeline event « 2014-09-18 - 2014-09-18 Qu''est-ce qui fait vendre ? C''est prévoir l''avenir ... » ajouté. timeline event « 2014-10-30 - 2014-10-30 Méthodes agiles » ajouté. timeline event « 2014-12-04 - 2014-12-04 Management » ajouté. timeline event « 2015-01-15 - 2015-01-15  » ajouté. location modifié pour timeline event « 2014-06-12 - 2014-06-12 Logistique ». location modifié pour timeline event « 2014-05-22 - 2014-05-22 Management / Logistique ». location modifié pour timeline event « 2014-06-12 - 2014-06-12 CMS / Freelance ». location modifié pour timeline event « 2014-07-08 - 2014-07-08 Technologie / Savoir faire ».',7,1,'2016-05-11 12:48:04.695170');
INSERT INTO "django_admin_log" VALUES(10,'1','2016-05-03 - dojo',2,'Modification de center_on. timeline event « 2015-01-15 - 2015-01-15 Ce n''est pas parce que c''est difficile qu''on ose pas, c''est parce qu''on n''ose pas que tout devient difficile. » ajouté. timeline event « 2016-01-28 - 2016-01-28 Divers » ajouté. timeline event « 2016-02-24 - 2016-02-24  » ajouté. location modifié pour timeline event « 2014-06-12 - 2014-06-12 Logistique ». location modifié pour timeline event « 2014-05-22 - 2014-05-22 Management / Logistique ». location modifié pour timeline event « 2014-06-12 - 2014-06-12 CMS / Freelance ». location modifié pour timeline event « 2014-07-08 - 2014-07-08 Technologie / Savoir faire ». text et location modifié pour timeline event « 2014-09-18 - 2014-09-18 Qu''est-ce qui fait vendre ? C''est prévoir l''avenir ... ». location modifié pour timeline event « 2014-10-30 - 2014-10-30 Méthodes agiles ». location modifié pour timeline event « 2014-12-04 - 2014-12-04 Management ». headline, text et location modifié pour timeline event « 2015-01-15 - 2015-01-15 Réseaux Sociaux ».',7,1,'2016-05-11 12:59:43.637475');
INSERT INTO "django_admin_log" VALUES(11,'1','2016-05-03 - dojo',2,'Modification de center_on. location modifié pour timeline event « 2014-06-12 - 2014-06-12 Logistique ». location modifié pour timeline event « 2014-05-22 - 2014-05-22 Management / Logistique ». location modifié pour timeline event « 2014-06-12 - 2014-06-12 CMS / Freelance ». location modifié pour timeline event « 2014-07-08 - 2014-07-08 Technologie / Savoir faire ». location modifié pour timeline event « 2014-09-18 - 2014-09-18 Qu''est-ce qui fait vendre ? C''est prévoir l''avenir ... ». location modifié pour timeline event « 2014-10-30 - 2014-10-30 Méthodes agiles ». location modifié pour timeline event « 2014-12-04 - 2014-12-04 Management ». location modifié pour timeline event « 2015-01-15 - 2015-01-15 Réseaux Sociaux ». text et location modifié pour timeline event « 2015-01-15 - 2015-01-15 Ce n''est pas parce que c''est difficile qu''on ose pas, c''est parce qu''on n''ose pas que tout devient difficile. ». location modifié pour timeline event « 2016-01-28 - 2016-01-28 Divers ». location modifié pour timeline event « 2016-02-24 - 2016-02-24  ».',7,1,'2016-05-11 13:02:00.884911');
INSERT INTO "django_admin_log" VALUES(12,'1','2016-05-03 - dojo',2,'Modification de center_on. location modifié pour timeline event « 2014-06-12 - 2014-06-12 Logistique ». location modifié pour timeline event « 2014-05-22 - 2014-05-22 Management / Logistique ». location modifié pour timeline event « 2014-06-12 - 2014-06-12 CMS / Freelance ». location modifié pour timeline event « 2014-07-08 - 2014-07-08 Technologie / Savoir faire ». location modifié pour timeline event « 2014-09-18 - 2014-09-18 Qu''est-ce qui fait vendre ? C''est prévoir l''avenir ... ». location modifié pour timeline event « 2014-10-30 - 2014-10-30 Méthodes agiles ». location modifié pour timeline event « 2014-12-04 - 2014-12-04 Management ». location modifié pour timeline event « 2015-01-15 - 2015-01-15 Réseaux Sociaux ». location modifié pour timeline event « 2015-01-15 - 2015-01-15 Ce n''est pas parce que c''est difficile qu''on ose pas, c''est parce qu''on n''ose pas que tout devient difficile. ». location modifié pour timeline event « 2016-01-28 - 2016-01-28 Divers ». headline, text et location modifié pour timeline event « 2016-02-24 - 2016-02-24 Logistique/Techno ».',7,1,'2016-05-11 13:04:52.028696');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO "django_content_type" VALUES(1,'admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'auth','permission');
INSERT INTO "django_content_type" VALUES(3,'auth','group');
INSERT INTO "django_content_type" VALUES(4,'auth','user');
INSERT INTO "django_content_type" VALUES(5,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'sessions','session');
INSERT INTO "django_content_type" VALUES(7,'timelinejs','timeline');
INSERT INTO "django_content_type" VALUES(8,'timelinejs','timelineevent');
INSERT INTO "django_content_type" VALUES(9,'timelinejs','timelineoptions');
INSERT INTO "django_content_type" VALUES(10,'sites','site');
INSERT INTO "django_content_type" VALUES(11,'userena','userenasignup');
INSERT INTO "django_content_type" VALUES(12,'guardian','userobjectpermission');
INSERT INTO "django_content_type" VALUES(13,'guardian','groupobjectpermission');
INSERT INTO "django_content_type" VALUES(14,'easy_thumbnails','source');
INSERT INTO "django_content_type" VALUES(15,'easy_thumbnails','thumbnail');
INSERT INTO "django_content_type" VALUES(16,'easy_thumbnails','thumbnaildimensions');
INSERT INTO "django_content_type" VALUES(17,'accounts','myprofile');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO "auth_permission" VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES(4,2,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES(5,2,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES(6,2,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES(7,3,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES(8,3,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES(9,3,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES(10,4,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES(11,4,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES(12,4,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES(13,5,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES(14,5,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES(15,5,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES(16,6,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES(17,6,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES(18,6,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES(19,7,'add_timeline','Can add timeline');
INSERT INTO "auth_permission" VALUES(20,7,'change_timeline','Can change timeline');
INSERT INTO "auth_permission" VALUES(21,7,'delete_timeline','Can delete timeline');
INSERT INTO "auth_permission" VALUES(22,8,'add_timelineevent','Can add timeline event');
INSERT INTO "auth_permission" VALUES(23,8,'change_timelineevent','Can change timeline event');
INSERT INTO "auth_permission" VALUES(24,8,'delete_timelineevent','Can delete timeline event');
INSERT INTO "auth_permission" VALUES(25,9,'add_timelineoptions','Can add timeline options');
INSERT INTO "auth_permission" VALUES(26,9,'change_timelineoptions','Can change timeline options');
INSERT INTO "auth_permission" VALUES(27,9,'delete_timelineoptions','Can delete timeline options');
INSERT INTO "auth_permission" VALUES(28,10,'add_site','Can add site');
INSERT INTO "auth_permission" VALUES(29,10,'change_site','Can change site');
INSERT INTO "auth_permission" VALUES(30,10,'delete_site','Can delete site');
INSERT INTO "auth_permission" VALUES(31,11,'add_userenasignup','Can add userena registration');
INSERT INTO "auth_permission" VALUES(32,11,'change_userenasignup','Can change userena registration');
INSERT INTO "auth_permission" VALUES(33,11,'delete_userenasignup','Can delete userena registration');
INSERT INTO "auth_permission" VALUES(34,12,'add_userobjectpermission','Can add user object permission');
INSERT INTO "auth_permission" VALUES(35,12,'change_userobjectpermission','Can change user object permission');
INSERT INTO "auth_permission" VALUES(36,12,'delete_userobjectpermission','Can delete user object permission');
INSERT INTO "auth_permission" VALUES(37,13,'add_groupobjectpermission','Can add group object permission');
INSERT INTO "auth_permission" VALUES(38,13,'change_groupobjectpermission','Can change group object permission');
INSERT INTO "auth_permission" VALUES(39,13,'delete_groupobjectpermission','Can delete group object permission');
INSERT INTO "auth_permission" VALUES(40,14,'add_source','Can add source');
INSERT INTO "auth_permission" VALUES(41,14,'change_source','Can change source');
INSERT INTO "auth_permission" VALUES(42,14,'delete_source','Can delete source');
INSERT INTO "auth_permission" VALUES(43,15,'add_thumbnail','Can add thumbnail');
INSERT INTO "auth_permission" VALUES(44,15,'change_thumbnail','Can change thumbnail');
INSERT INTO "auth_permission" VALUES(45,15,'delete_thumbnail','Can delete thumbnail');
INSERT INTO "auth_permission" VALUES(46,16,'add_thumbnaildimensions','Can add thumbnail dimensions');
INSERT INTO "auth_permission" VALUES(47,16,'change_thumbnaildimensions','Can change thumbnail dimensions');
INSERT INTO "auth_permission" VALUES(48,16,'delete_thumbnaildimensions','Can delete thumbnail dimensions');
INSERT INTO "auth_permission" VALUES(49,17,'add_myprofile','Can add my profile');
INSERT INTO "auth_permission" VALUES(50,17,'change_myprofile','Can change my profile');
INSERT INTO "auth_permission" VALUES(51,17,'delete_myprofile','Can delete my profile');
INSERT INTO "auth_permission" VALUES(52,17,'view_profile','Can view profile');
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(30) NOT NULL UNIQUE);
INSERT INTO "auth_user" VALUES(-1,'!1jKytWdhqNTTVepLjrW84GgU7DFoy5DeIJFUYfEk',NULL,0,'','','',0,1,'2016-05-04 09:44:54.007544','AnonymousUser');
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$24000$2VT5Wjt2HDhF$cIOwn5wbFb2c1Dpe4SxgFHSxatVnxfHcs6JShlDcRM0=','2016-05-11 11:51:44.146093',1,'','','',1,1,'2016-05-03 13:24:04.401500','root');
INSERT INTO "auth_user" VALUES(2,'pbkdf2_sha256$24000$TrfVu0e85U7m$vwL/fJ1+OOVYHnCxYPqX/XwEtwl74Ch3RylGNBkkEJY=',NULL,0,'','','plop@plop.fr',0,0,'2016-05-04 14:38:31.880917','plop');
INSERT INTO "auth_user" VALUES(3,'pbkdf2_sha256$24000$SFbUNSaPjqbp$JHMK8yqD7RpPqXCx0umaOe6VDW1MzQ1mjzGC59kGr3E=',NULL,0,'','','plop2@plop.fr',0,0,'2016-05-04 14:46:29.377048','plop2');
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO "django_session" VALUES('7tqxu7r51rgjva6gii4jexwlg9l7arsh','YTEwNDRjMjVjNGUwNjU0YjFiOWYzMGVkZWZjMGRmYjZhYWVlMjZmMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI3NzQzOWI3ZmExZDBhOTBmZjA0MTU0MGI4YjlhZTQ2Njc5N2EwOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-05-17 13:24:43.138903');
INSERT INTO "django_session" VALUES('wem7p335p39b9c7r87ch50qwnx5iccm7','YTEwNDRjMjVjNGUwNjU0YjFiOWYzMGVkZWZjMGRmYjZhYWVlMjZmMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImI3NzQzOWI3ZmExZDBhOTBmZjA0MTU0MGI4YjlhZTQ2Njc5N2EwOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-05-25 11:51:44.246224');
CREATE TABLE "timelinejs_timelineoptions" ("timeline_id" integer NOT NULL PRIMARY KEY REFERENCES "timelinejs_timeline" ("id"), "width" varchar(10) NOT NULL, "height" varchar(10) NOT NULL, "embed_id" varchar(20) NOT NULL, "start_at_end" bool NOT NULL, "start_at_slide" integer NOT NULL, "start_zoom_adjust" integer NOT NULL, "hash_bookmark" bool NOT NULL, "font" varchar(50) NOT NULL, "debug" bool NOT NULL, "lang" varchar(6) NOT NULL, "maptype" varchar(50) NOT NULL);
CREATE TABLE "timelinejs_timeline" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "headline" varchar(200) NOT NULL, "type" varchar(50) NOT NULL, "start_date" date NOT NULL, "text" text NOT NULL, "asset_media" varchar(200) NOT NULL, "asset_credit" varchar(200) NOT NULL, "asset_caption" varchar(200) NOT NULL, "center_on" text NOT NULL);
INSERT INTO "timelinejs_timeline" VALUES(1,'dojo','default','2016-05-03','Entreprises Agiles','','','','[]');
CREATE TABLE "timelinejs_timelineevent" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "start_date" date NOT NULL, "end_date" date NULL, "headline" varchar(200) NOT NULL, "text" text NOT NULL, "asset_media" varchar(200) NOT NULL, "asset_credit" varchar(200) NOT NULL, "asset_caption" varchar(200) NOT NULL, "timeline_id" integer NOT NULL REFERENCES "timelinejs_timeline" ("id"), "location" text NOT NULL);
INSERT INTO "timelinejs_timelineevent" VALUES(1,'2014-06-12','2014-06-12','Logistique','Resitution Connect''sud:
- Quelles sont les étapes de développement d''une activité multicanal ?
- Décryptage et mesure d''une opération d''acquisition client de A à Z
- World Wide Web :  organisez votre e-logistique
- Marketing Automation & Trigger par e-mail : quand la fidélisation génère du business
-  Comment transformer vos consommateurs en consomm''acteurs ? Comment inscrire votre marque ou votre entreprise dans l’imaginaire de vos clients?
<br></br>
Gestion du panier vide => rendre les frais de port gratuit (1ere commande)
Gestion des campagnes mail :
     - Outils => YMLP, MailChimps: Logiciel d''emailing & marketing par e-mail
     - Penser au double optin, contre les spams et le blaklistage de google
     - Penser au mail de bienvenue avec formulaire de segmentation','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(2,'2014-05-22','2014-05-22','Management / Logistique','Les méthodes agiles : Gestion d''équipe, responsabilité partagée, time boxing des taches

 <br></br>
Les outils de communication (réseaux sociaux, blog, ...) toujours un intérêt ? :
Deux catégories d''''outils:
     - Le fond : blog, site web
     Le fond reprend un concept, un sujet décomposable pour durer dans le temps.

     - La forme : twitter, facebook, google+, Viadéo, ...
     La forme reprend également une cible de client. Il faut donc être vigilant sur le fond et la cible (la forme)
<br></br>
Veille technologique sur les  codes barres :
QRCode, Flash Code des codes barres rendant les supports papiers interactifs','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(3,'2014-06-12','2014-06-12','CMS / Freelance','Le référencement :  Utiliser un CMS récent qui gère les règles de référencement pour les novices
Scoopit : outil de veille

<br></br>

Travailler avec un Freelancer : Implication plus fort (ne compte pas ses heures)
Est plus flexible
Suivi du client plus naturel

<br></br>

Méthode pour devenir un freelancer : Participer aux espaces de coworking (réseau interprofessionnel)
Passer par une coopérative d''activité d''emploi (CAE) :
     - 1 par département : Mine de talent (48, Créalide (34))','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(4,'2014-07-08','2014-07-08','Technologie / Savoir faire','Améliorons notre communication commerciale :  Comparatif des cartes de visite, flyer, plaquette de communication.
<br></br>
Quelles sont vos démarches commerciales ? (Flyer, encart publicitaire, annonce sur Midi-libre, ...)
Votre communication directe ? (PLV, PAO, Site vitrine) :
<ul>

<li>- Que faire après des cartes de visite des contacts apres intégration au CRM ? la question est toujours ouverte. </li>
   Voici des propositions : les classer dans un classeurs, les numériser et les intégrer dans le CRM
<li>- Sur les Flyers : attention à avoir un Rector léger, à la police de caractère, au choix des images + explicites</li>
<li>- Sur les images, essayer d''avoir un fond avec un paysage lozerien si on mise sur le coté local.</li>
<li> - sur les plaquettes, la nouvelle plaquette du CFPPA a fait sensation, découvrez le concept au prochain point ;)</li>
</ul>
<br></br>
Discussion sur la virtualisation : Découverte de ces technologies, présentation, avantages, coût, ...','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(5,'2014-09-18','2014-09-18','Qu''est-ce qui fait vendre ? C''est prévoir l''avenir ...','Retour sur la soirée community management du 17/09/14 de Pollen.
<br></br>
 Veille sur les marketplaces :
Amazone : bonne expérience cliente avec large choix de produits (cf BTP)
eBay, Alibaba, Site de vente aux enchères spécialisé sur une gamme, Google Shopping a étudier, le coin des bonnes affaires (local en Lozère).
Plateforme d''affiliation : http://clickbank.com,  http://1tpe.com

Ces solutions ne doivent pas être la solution unique de distribution.
Exemple : vendre des produits de déstockage sans nuire à la clientèle fidèle
<br></br>
Adaption du prix : en fonction du navigateur, du systeme d''exploitation
<br></br>
Aggrégateur d''annonce :
<ul>
<li>
cobiive : pour les ateliers
</li>
<li>
Sowbuzz : pour les annonces
</li>
</ul>','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(6,'2014-10-30','2014-10-30','Méthodes agiles','Méthodes agiles :  Découverte par l''atelier','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(7,'2014-12-04','2014-12-04','Management','Retour sur le salon Agile tour Montpellier (15 oct) :
<ul>
<li>- Travail personnel : PDCA, GTD, Kanban </li>
<li>- Macdo : très optimisé (multi-tâches des personnes) </li>

</ul>
<br></br>

Test de recrutement (stagiaire, embauche, ...) :
<ul>
<li> - 3 types : Personnalité, Logique/Bon sens, Connaissance </li>
<li> - Omelette pour les cuisiniers </li>
<li> - Test d''écriture d''une lettre </li>
</ul>','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(8,'2015-01-15','2015-01-15','Réseaux Sociaux','Gros avantage : cibler les clients
Google alert (https://www.google.fr/alerts) : pour surveiller sa e-Réputation
Cas d''école Orangina sur les réseaux sociaux :

<ul>
<li>
- Facebook : pour la notoriété, le B2C
</li>
<li>
- Linkin, youtube: pour le contenu professionnel, le B2B
</li>
<li>
- Viadeo : pour le recrutement
</li>
<li>
- Page jaune : pour les horaires
</li>
<li>
- Pinterest : pour l''engagement
</li>
<ul>

==> permettent un premier contact avec les clients + fidélités <==','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(9,'2015-01-15','2015-01-15','Ce n''est pas parce que c''est difficile qu''on ose pas, c''est parce qu''on n''ose pas que tout devient difficile.','Intimité avec le client :
Créer des événements / manifestions hors champs professionnelles pour rentrer dans l''intimité des clients:
<ul>
<li>
- Poser des questions sur le client
</li>
<li>
- Exemple : événement sur le beaujolais nouveau, «home marketing» (soirée tupperware)
</li>
</ul>
<br></br>
Brainstorming :
Réunion pour avoir des idées :
<ul>
<li>
- Les 6 chapeaux
</li>
<li>
- 365
</li>
<li>
- Percevoir l''avenir dans 10 ans
</li>
<li>
- Faire en amont les réunions SWOT (à voir au prochain Dojo)
</li>
</ul>
<br></br>
 Développement commercial :
Les étapes:
<ul>
<li>
1- Faire un SWOT</li>
<li>2- Faire des rencontres avec les clients (les faire venir, aller dans la rue devant le magasin, ouvrir les portes...)</li>
<li>3- Provoquer l''achat : </li>
<li>- Jeux concours</li>
<li>- Faire des promotions : ne pas les exprimer en % pour ne pas perdre sur la marge </li>
</ul>','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(10,'2016-01-28','2016-01-28','Divers','<ul>
<li>
<li>- Modélisation 3D</li>
<li>- Crédit impôt rechercher</li>
<li>- Raspberry / Peer to peer</li>
<li>- le recrutement</li>
<li>- le web to shop</li>
</ul>','','','',1,'[]');
INSERT INTO "timelinejs_timelineevent" VALUES(11,'2016-02-24','2016-02-24','Logistique/Techno','- planning événementiel => Attention aux vacances scolaires
<br></br>
- déployer une solution home cloud => https://cozy.io/fr/
<br></br>
- site web : les questions à se poser
<ul>
     <li>   1- Quel type ? Vitrine / Marchand</li>
     <li>   2- Quelle cible ? Professionnel, ...</li>
     <li>   3- Quels besoins ? Notoriété, vendre, ...</li>
     <li>   4- Quels niveaux géographiques ? Ville, département, national, ...</li>
     <li>   5- Quelles sont les points forts ? Qu''est-ce qui vous démarque ?</li>
      <li>  6- Donner 10 expressions clés vous caractérisant</li>
      <li>  7- Quel Nom ? https://www.google.fr/trends/</li>
      <li>   8- Quel hébergeur ? https://www.freelancer.com/, https://www.ovh.com/fr/</li>
</ul>
<br></br>
- UX design
        - "ergonomie web" has been ?!
        - http://archive.org/web/ : Retour vers le futur du design
<br></br>
- les solutions de billetterie
        https://www.weezevent.com
        http://www.digitick.net/
<br></br>
- les protections du RFID sur la carte bleue
http://www.amazon.fr/Lot-Prot%C3%A8ge-ANTI-RFID-PAIEMENT-CONTACT/dp/B00NWG3ZKQ','','','',1,'[]');
CREATE TABLE "django_site" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "domain" varchar(100) NOT NULL UNIQUE);
INSERT INTO "django_site" VALUES(1,'example.com','example.com');
INSERT INTO "django_site" VALUES(2,'','localhost:8080');
CREATE TABLE "accounts_myprofile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "mugshot" varchar(100) NOT NULL, "privacy" varchar(15) NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id"));
INSERT INTO "accounts_myprofile" VALUES(1,'','registered',2);
INSERT INTO "accounts_myprofile" VALUES(2,'','registered',3);
CREATE TABLE "easy_thumbnails_thumbnail" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "storage_hash" varchar(40) NOT NULL, "name" varchar(255) NOT NULL, "modified" datetime NOT NULL, "source_id" integer NOT NULL REFERENCES "easy_thumbnails_source" ("id"));
CREATE TABLE "easy_thumbnails_source" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "storage_hash" varchar(40) NOT NULL, "name" varchar(255) NOT NULL, "modified" datetime NOT NULL);
CREATE TABLE "easy_thumbnails_thumbnaildimensions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "thumbnail_id" integer NOT NULL UNIQUE REFERENCES "easy_thumbnails_thumbnail" ("id"), "width" integer unsigned NULL, "height" integer unsigned NULL);
CREATE TABLE "guardian_userobjectpermission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_pk" varchar(255) NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
INSERT INTO "guardian_userobjectpermission" VALUES(1,'1',17,52,2);
INSERT INTO "guardian_userobjectpermission" VALUES(2,'2',17,52,3);
CREATE TABLE "guardian_groupobjectpermission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_pk" varchar(255) NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "userena_userenasignup" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "last_active" datetime NULL, "activation_key" varchar(40) NOT NULL, "activation_notification_send" bool NOT NULL, "email_confirmation_key" varchar(40) NOT NULL, "email_confirmation_key_created" datetime NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id"), "email_unconfirmed" varchar(254) NOT NULL);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('django_migrations',23);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',12);
INSERT INTO "sqlite_sequence" VALUES('django_content_type',17);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',52);
INSERT INTO "sqlite_sequence" VALUES('auth_user',3);
INSERT INTO "sqlite_sequence" VALUES('timelinejs_timeline',1);
INSERT INTO "sqlite_sequence" VALUES('timelinejs_timelineevent',11);
INSERT INTO "sqlite_sequence" VALUES('django_site',2);
INSERT INTO "sqlite_sequence" VALUES('easy_thumbnails_thumbnail',0);
INSERT INTO "sqlite_sequence" VALUES('easy_thumbnails_source',0);
INSERT INTO "sqlite_sequence" VALUES('guardian_userobjectpermission',2);
INSERT INTO "sqlite_sequence" VALUES('guardian_groupobjectpermission',0);
INSERT INTO "sqlite_sequence" VALUES('accounts_myprofile',2);
INSERT INTO "sqlite_sequence" VALUES('userena_userenasignup',0);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
CREATE INDEX "timelinejs_timelineevent_f3fcf12f" ON "timelinejs_timelineevent" ("timeline_id");
CREATE UNIQUE INDEX "easy_thumbnails_thumbnail_storage_hash_fb375270_uniq" ON "easy_thumbnails_thumbnail" ("storage_hash", "name", "source_id");
CREATE INDEX "easy_thumbnails_thumbnail_b454e115" ON "easy_thumbnails_thumbnail" ("storage_hash");
CREATE INDEX "easy_thumbnails_thumbnail_b068931c" ON "easy_thumbnails_thumbnail" ("name");
CREATE INDEX "easy_thumbnails_thumbnail_0afd9202" ON "easy_thumbnails_thumbnail" ("source_id");
CREATE UNIQUE INDEX "easy_thumbnails_source_storage_hash_481ce32d_uniq" ON "easy_thumbnails_source" ("storage_hash", "name");
CREATE INDEX "easy_thumbnails_source_b454e115" ON "easy_thumbnails_source" ("storage_hash");
CREATE INDEX "easy_thumbnails_source_b068931c" ON "easy_thumbnails_source" ("name");
CREATE UNIQUE INDEX "guardian_userobjectpermission_user_id_b0b3d2fc_uniq" ON "guardian_userobjectpermission" ("user_id", "permission_id", "object_pk");
CREATE INDEX "guardian_userobjectpermission_417f1b1c" ON "guardian_userobjectpermission" ("content_type_id");
CREATE INDEX "guardian_userobjectpermission_8373b171" ON "guardian_userobjectpermission" ("permission_id");
CREATE INDEX "guardian_userobjectpermission_e8701ad4" ON "guardian_userobjectpermission" ("user_id");
CREATE UNIQUE INDEX "guardian_groupobjectpermission_group_id_3f189f7c_uniq" ON "guardian_groupobjectpermission" ("group_id", "permission_id", "object_pk");
CREATE INDEX "guardian_groupobjectpermission_417f1b1c" ON "guardian_groupobjectpermission" ("content_type_id");
CREATE INDEX "guardian_groupobjectpermission_0e939a4f" ON "guardian_groupobjectpermission" ("group_id");
CREATE INDEX "guardian_groupobjectpermission_8373b171" ON "guardian_groupobjectpermission" ("permission_id");
