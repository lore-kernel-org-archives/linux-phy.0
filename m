Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 570C9CD129C
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F90UiirOmqpCoIBTw7HRXfgizzx1KM9LJWBXjf/BeyI=; b=mJ91eKxso4nFUG
	PN47fsO511e5o0cabo+gqyoT1yq0dBJDIJ4YcJkTKq7swhZRx9UufOpn8xWWXnhE2edJnMhQtWSLq
	wY8ltYOXcOR7+CKr3UF6U55GcGO3wJUg0QQqmZBgoYpxCnDsXI8GJhvx5vIKD2H/ydakh0+XcDjx/
	tTWkDRqrxOYP/VDoqMI4uRTOFkahKxYebYWDLABn2EQ0Gf9GptRURJqasClVoreU4JFJaopoiiq0v
	h6K7vjXkBdvlrqdyeQUgKdEJkHAnW86CS60B5k23NMowvYVjD9Nc1vLeNrE2keA9lY1D7gsJRAjep
	JeQP+94klRcdjevTAmTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyj-00000009TpU-0IS9;
	Sat, 31 Aug 2024 14:21:25 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyg-00000009Tog-0kRC
	for linux-phy@lists.infradead.org;
	Sat, 31 Aug 2024 14:21:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725114081;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0QIaDwiuzjwwdhdGYGN9s12CC0QR4D1zMEIQpGYdueU=;
	b=RgIXQOTRyZkxsyC/0cI9lButM6+3zz3saimleqKMdKoa4rEgGuQxvzVN/dnW0SNCNqupHl
	SJnE46y7l6J1JMW3qyHp1c3l05Sre0wsByJp0HUbIdbk3S5F1NqN10p/yRH3DJwfQL+uLs
	zdJJKXK2esq58n09VoCrVZ2mcJEqd38=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-111-fgYXGaqhNH24_hgJ54PJEg-1; Sat,
 31 Aug 2024 10:21:16 -0400
X-MC-Unique: fgYXGaqhNH24_hgJ54PJEg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D6A611955F40;
	Sat, 31 Aug 2024 14:21:13 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.42])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id DF4913001FEF;
	Sat, 31 Aug 2024 14:21:09 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Sebastian Reichel <sre@kernel.org>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Enric Balletbo Serra <enric.balletbo@collabora.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 5/6] power: supply: sysfs: Move power_supply_show_enum_with_available() up
Date: Sat, 31 Aug 2024 16:20:38 +0200
Message-ID: <20240831142039.28830-6-hdegoede@redhat.com>
In-Reply-To: <20240831142039.28830-1-hdegoede@redhat.com>
References: <20240831142039.28830-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_072122_312227_FB36993B 
X-CRM114-Status: GOOD (  14.38  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Move power_supply_show_enum_with_available() higher up in
the power_supply_sysfs.c file.

This is a preparation patch to avoid needing a forward declaration
when replacing power_supply_show_usb_type() with it later on.

This commit only moves the function, there are no changes to it.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/power/supply/power_supply_sysfs.c | 62 +++++++++++------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supply/power_supply_sysfs.c
index 9f21b0b54caf..c98a6de59d3b 100644
--- a/drivers/power/supply/power_supply_sysfs.c
+++ b/drivers/power/supply/power_supply_sysfs.c
@@ -237,6 +237,37 @@ static enum power_supply_property dev_attr_psp(struct device_attribute *attr)
 	return  to_ps_attr(attr) - power_supply_attrs;
 }
 
+static ssize_t power_supply_show_enum_with_available(
+			struct device *dev, const char * const labels[], int label_count,
+			unsigned int available_values, int value, char *buf)
+{
+	bool match = false, available, active;
+	ssize_t count = 0;
+	int i;
+
+	for (i = 0; i < label_count; i++) {
+		available = available_values & BIT(i);
+		active = i == value;
+
+		if (available && active) {
+			count += sysfs_emit_at(buf, count, "[%s] ", labels[i]);
+			match = true;
+		} else if (available) {
+			count += sysfs_emit_at(buf, count, "%s ", labels[i]);
+		}
+	}
+
+	if (!match) {
+		dev_warn(dev, "driver reporting unavailable enum value %d\n", value);
+		return -EINVAL;
+	}
+
+	if (count)
+		buf[count - 1] = '\n';
+
+	return count;
+}
+
 static ssize_t power_supply_show_usb_type(struct device *dev,
 					  const struct power_supply_desc *desc,
 					  union power_supply_propval *value,
@@ -518,37 +549,6 @@ int power_supply_uevent(const struct device *dev, struct kobj_uevent_env *env)
 	return ret;
 }
 
-static ssize_t power_supply_show_enum_with_available(
-			struct device *dev, const char * const labels[], int label_count,
-			unsigned int available_values, int value, char *buf)
-{
-	bool match = false, available, active;
-	ssize_t count = 0;
-	int i;
-
-	for (i = 0; i < label_count; i++) {
-		available = available_values & BIT(i);
-		active = i == value;
-
-		if (available && active) {
-			count += sysfs_emit_at(buf, count, "[%s] ", labels[i]);
-			match = true;
-		} else if (available) {
-			count += sysfs_emit_at(buf, count, "%s ", labels[i]);
-		}
-	}
-
-	if (!match) {
-		dev_warn(dev, "driver reporting unavailable enum value %d\n", value);
-		return -EINVAL;
-	}
-
-	if (count)
-		buf[count - 1] = '\n';
-
-	return count;
-}
-
 ssize_t power_supply_charge_behaviour_show(struct device *dev,
 					   unsigned int available_behaviours,
 					   enum power_supply_charge_behaviour current_behaviour,
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
