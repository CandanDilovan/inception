mkdir -p /var/www/wordpress

cd /var/www/wordpress

sed -i "s/votre_nom_de_bdd/$SQL_DATABASE/g" wp-config-sample.php
sed -i "s/votre_utilisateur_de_bdd/$SQL_USER/g" wp-config-sample.php
sed -i "s/votre_mdp_de_bdd/$SQL_PASSWORD/g" wp-config-sample.php
sed -i "s/localhost/mariadb:3306/g" wp-config-sample.php
mv wp-config-sample.php wp-config.php

sleep 10

wp core install --allow-root \
                --url=dcandan.42.fr \
                --title=YESSAILLE \
                --admin_user=$ADMIN_NAME \
                --admin_password=$ADMIN_PASS \
                --admin_email=$ADMIN_EMAIL \
                --skip-email

wp user create $USER_NAME $USER_EMAIL --user_pass=$USER_PASS --allow-root