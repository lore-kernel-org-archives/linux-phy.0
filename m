Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F6FDCD1284
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 14:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dmFqsutNEWH0Azqcnkt+um9Buaez1WNfU2SO2LMEzGM=; b=G5h9Wi02CNkXji
	fmJEWnsjatI/QNZFBQnvHJrVAkvnflN9WVD8DFj2qA/EKs5uWJwZzDZNtGfJWdoBKYFWJRpjxiQ+H
	jjZfdJW5O7yuQMnLgazGWGrL8MlR5e1T1ZffC4g6r4H87ob6YbIukROMpUAbgnQEbJqQAyy9lHI8/
	icCQkqBv/JALkTlMQnop9qH4by6fHJS6cUXdl3MpnAJFVUqtMslOZCRSz69usDEGInk1VRHyVOWJn
	Q3kBb09pEst3f3+OA5qssT6REYJZZrfwvgwplYhX/69g5qsM2VkdIPzIJgeUCtVMheKZbAwU7/ccj
	JyJzCavJcZHsdhUtrngw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt6in-0000000APCK-3TX6;
	Sat, 06 Apr 2024 14:08:41 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt6ik-0000000APBr-3SSM
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 14:08:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712412516;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=5PiGHEnTid+FCUYT6D1TamrJVqGY2e5ZDoc7FwF/VFY=;
	b=h//3XLLz2+0Es8w8ZZZk+81Z30/+3pvxUzkBTYD1DReZLfVH7Kdc0BYEdq4bqOJKfXp/qx
	ZsnaHZpyye2+67ANRhkxCxQbvSdP/2Efg+4J73ttdEUOZUP4M0zk85+MiPw20++wAQMCcD
	/8AsqjqH/oHofxVFAoNkVY1cKLnlohk=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-376-jDaRziJSMnOktQy-NATyBg-1; Sat,
 06 Apr 2024 10:08:34 -0400
X-MC-Unique: jDaRziJSMnOktQy-NATyBg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6BC1D3800E83;
	Sat,  6 Apr 2024 14:08:34 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.50])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C0DD9492BCB;
	Sat,  6 Apr 2024 14:08:33 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: ti: tusb1210: Resolve charger-det crash if charger psy is unregistered
Date: Sat,  6 Apr 2024 16:08:21 +0200
Message-ID: <20240406140821.18624-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_070839_092211_34BB213B 
X-CRM114-Status: GOOD (  16.94  )
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

The power_supply frame-work is not really designed for there to be
long living in kernel references to power_supply devices.

Specifically unregistering a power_supply while some other code has
a reference to it triggers a WARN in power_supply_unregister():

	WARN_ON(atomic_dec_return(&psy->use_cnt));

Folllowed by the power_supply still getting removed and the
backing data freed anyway, leaving the tusb1210 charger-detect code
with a dangling reference, resulting in a crash the next time
tusb1210_get_online() is called.

Fix this by only holding the reference in tusb1210_get_online()
freeing it at the end of the function. Note this still leaves
a theoretical race window, but it avoids the issue when manually
rmmod-ing the charger chip driver during development.

Fixes: 48969a5623ed ("phy: ti: tusb1210: Add charger detection")
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/phy/ti/phy-tusb1210.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index 13cd614e12a1..751fecd466e3 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -69,7 +69,6 @@ struct tusb1210 {
 	struct delayed_work chg_det_work;
 	struct notifier_block psy_nb;
 	struct power_supply *psy;
-	struct power_supply *charger;
 #endif
 };
 
@@ -236,19 +235,24 @@ static const char * const tusb1210_chargers[] = {
 
 static bool tusb1210_get_online(struct tusb1210 *tusb)
 {
+	struct power_supply *charger = NULL;
 	union power_supply_propval val;
-	int i;
+	bool online = false;
+	int i, ret;
 
-	for (i = 0; i < ARRAY_SIZE(tusb1210_chargers) && !tusb->charger; i++)
-		tusb->charger = power_supply_get_by_name(tusb1210_chargers[i]);
+	for (i = 0; i < ARRAY_SIZE(tusb1210_chargers) && !charger; i++)
+		charger = power_supply_get_by_name(tusb1210_chargers[i]);
 
-	if (!tusb->charger)
+	if (!charger)
 		return false;
 
-	if (power_supply_get_property(tusb->charger, POWER_SUPPLY_PROP_ONLINE, &val))
-		return false;
+	ret = power_supply_get_property(charger, POWER_SUPPLY_PROP_ONLINE, &val);
+	if (ret == 0)
+		online = val.intval;
 
-	return val.intval;
+	power_supply_put(charger);
+
+	return online;
 }
 
 static void tusb1210_chg_det_work(struct work_struct *work)
@@ -473,9 +477,6 @@ static void tusb1210_remove_charger_detect(struct tusb1210 *tusb)
 		cancel_delayed_work_sync(&tusb->chg_det_work);
 		power_supply_unregister(tusb->psy);
 	}
-
-	if (tusb->charger)
-		power_supply_put(tusb->charger);
 }
 #else
 static void tusb1210_probe_charger_detect(struct tusb1210 *tusb) { }
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
