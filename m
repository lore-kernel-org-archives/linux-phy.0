Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63C7ACD13D2
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 14:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Mw0ZQs/Eb1m0SM/tdx7X83zZPHp0H0HvKhlEqjdtzM=; b=DlGgq0FojByB5M
	U1dWH2/pqi9kfZyXyGj6uFoDNxgmkXySWlFL/Vbp73kEaQSr1P046FpeoQn8LhecK8FkR/QGkj4Sc
	FwQ/UNRce70ZF1gloOZRt2JOH2bZyfS5qdxskmkcdJUlFw0g/1IZB7YBy+K22zwRt4GgRtb+HjZ9O
	rxmHwUl4dmi/Eat6l6TpuUDyEKFEvjrNu2VGxtz2+S3mG3dQuHZZf+lrSAWhBS6sfOAr0/ckf4f/x
	DApJhPxXY7MNNwcwJ8yZphlItXzgEd7vPYZglW0C3xgAnfo2/vaRlhzpy/zoCO2ilEnfqom5PIEoZ
	axkqjyxlj4coMVS3v7+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOye-00000009ToF-0TW1;
	Sat, 31 Aug 2024 14:21:20 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyb-00000009TmS-2JLx
	for linux-phy@lists.infradead.org;
	Sat, 31 Aug 2024 14:21:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725114075;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FF++cKBP8Z5pJxXGjkdRcYsFMQ1dJi1+OYKZbD3H9KE=;
	b=MCct5f+SycXXgOjz3kqOG9dAQNOP+UEEWtsNv0TLYCh6g1dzvc58F4XNUzWc5B/3w6o4aB
	//an0sJWhMcczjARlacepwlO6miZjPFJT8K8xmtvzbpGov6l47VKjMr7gP+cmfiGw5zh3Y
	g8dph6dS5i5FPNDyboOmmeV55BZmLRU=
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-682-w9ZPOsfIMLit7EGphexvFg-1; Sat,
 31 Aug 2024 10:21:12 -0400
X-MC-Unique: w9ZPOsfIMLit7EGphexvFg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B79BD1955D50;
	Sat, 31 Aug 2024 14:21:09 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.42])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 8A30230001A4;
	Sat, 31 Aug 2024 14:21:05 +0000 (UTC)
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
Subject: [PATCH 4/6] power: supply: sysfs: Add power_supply_show_enum_with_available() helper
Date: Sat, 31 Aug 2024 16:20:37 +0200
Message-ID: <20240831142039.28830-5-hdegoede@redhat.com>
In-Reply-To: <20240831142039.28830-1-hdegoede@redhat.com>
References: <20240831142039.28830-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_072118_048082_BCA70815 
X-CRM114-Status: GOOD (  12.75  )
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

Turn power_supply_charge_behaviour_show() into a generic function for
showing enum values with their available (for writing) values shown
and the current value shown surrounded by sqaure-brackets like
the show() output for "usb_type" and "charge_behaviour".

This is a preparation patch for refactoring the "usb_type" property
handling to use a bitmask indicating available usb-types + this new
generic function.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/power/supply/power_supply_sysfs.c | 32 ++++++++++++++---------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supply/power_supply_sysfs.c
index ff7e423edd57..9f21b0b54caf 100644
--- a/drivers/power/supply/power_supply_sysfs.c
+++ b/drivers/power/supply/power_supply_sysfs.c
@@ -518,31 +518,28 @@ int power_supply_uevent(const struct device *dev, struct kobj_uevent_env *env)
 	return ret;
 }
 
-ssize_t power_supply_charge_behaviour_show(struct device *dev,
-					   unsigned int available_behaviours,
-					   enum power_supply_charge_behaviour current_behaviour,
-					   char *buf)
+static ssize_t power_supply_show_enum_with_available(
+			struct device *dev, const char * const labels[], int label_count,
+			unsigned int available_values, int value, char *buf)
 {
 	bool match = false, available, active;
 	ssize_t count = 0;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT); i++) {
-		available = available_behaviours & BIT(i);
-		active = i == current_behaviour;
+	for (i = 0; i < label_count; i++) {
+		available = available_values & BIT(i);
+		active = i == value;
 
 		if (available && active) {
-			count += sysfs_emit_at(buf, count, "[%s] ",
-					       POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT[i]);
+			count += sysfs_emit_at(buf, count, "[%s] ", labels[i]);
 			match = true;
 		} else if (available) {
-			count += sysfs_emit_at(buf, count, "%s ",
-					       POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT[i]);
+			count += sysfs_emit_at(buf, count, "%s ", labels[i]);
 		}
 	}
 
 	if (!match) {
-		dev_warn(dev, "driver reporting unsupported charge behaviour\n");
+		dev_warn(dev, "driver reporting unavailable enum value %d\n", value);
 		return -EINVAL;
 	}
 
@@ -551,6 +548,17 @@ ssize_t power_supply_charge_behaviour_show(struct device *dev,
 
 	return count;
 }
+
+ssize_t power_supply_charge_behaviour_show(struct device *dev,
+					   unsigned int available_behaviours,
+					   enum power_supply_charge_behaviour current_behaviour,
+					   char *buf)
+{
+	return power_supply_show_enum_with_available(
+				dev, POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT,
+				ARRAY_SIZE(POWER_SUPPLY_CHARGE_BEHAVIOUR_TEXT),
+				available_behaviours, current_behaviour, buf);
+}
 EXPORT_SYMBOL_GPL(power_supply_charge_behaviour_show);
 
 int power_supply_charge_behaviour_parse(unsigned int available_behaviours, const char *buf)
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
