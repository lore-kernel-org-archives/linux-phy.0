Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5111DCD13D8
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 14:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FQ1ozktRUx+Rj3dJBlSlGy1cdWy7Qx/LXtQQHBGemU=; b=o83A9dyghMUEXw
	4Em0MCMtHNzuErDgVcFgm0mzcXmljkkSq/IIkfB/Ie1dPVMsauO25Nwhv1YE8b0aDrgTXf+pQz37r
	DVQ9MISC+rAXbBXdQEfPedJLhco8hX1rOOOZPpmB+HYfsd0CoexyuvJc7kBS9AAFAll0pabQnbZpX
	pCt2qP/7+vVMPj1veRqxe3YYEuUx615HRsdVM0Bw1YcC9M88PNpeNWwUitPfJsEIW5gbj2u+Sqsuw
	inU8XHSNKmOClqUiTAovJQd5Zq5qDdEkuNbTL370k60WjAOIQ8/KWJcPo0pf2R2ppO9MgeKAU8WHT
	1FCIsLwbopPsNkYTqJcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyT-00000009Tjl-3yRm;
	Sat, 31 Aug 2024 14:21:09 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skOyM-00000009Thl-2Qvs
	for linux-phy@lists.infradead.org;
	Sat, 31 Aug 2024 14:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1725114060;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/lkCNG9OGHuMCZ2ifhRy12eWeNAdzUD42d8uAz9aRXo=;
	b=NM6Q9k1gQO5tunbikKcMXeN2lmfGD9lynIILc37KlNz4y4ndsZ3OTAu9wnRkMrx7/ZsXzE
	i5hD06YQDs4hsaXWCxJSOtK1Uww4k4aA1QxlGzHuoJwaAEISzhBOZiC5Uz0YahjsqiwVaO
	YBybEStEeJSotcZ55/GH1Lmne+oCt6E=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-528-QNnOJ3KPMVKqjF4lldj5AA-1; Sat,
 31 Aug 2024 10:20:58 -0400
X-MC-Unique: QNnOJ3KPMVKqjF4lldj5AA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 84F821955D47;
	Sat, 31 Aug 2024 14:20:55 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.39.192.42])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 9B9053001FE8;
	Sat, 31 Aug 2024 14:20:50 +0000 (UTC)
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
Subject: [PATCH 1/6] power: supply: "usb_type" property may be written to
Date: Sat, 31 Aug 2024 16:20:34 +0200
Message-ID: <20240831142039.28830-2-hdegoede@redhat.com>
In-Reply-To: <20240831142039.28830-1-hdegoede@redhat.com>
References: <20240831142039.28830-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_072102_738275_8780C224 
X-CRM114-Status: GOOD (  13.39  )
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

According to Documentation/ABI/testing/sysfs-class-power the "usb_type"
property is Read-Only.

For power-supplies which consume USB power such as battery charger chips,
this is correct.

But the UCS1002 USB Port Power Controller driver which is a driver
for a chip which is a power-source for USB-A charging ports "usb_type"
is actually writable to configure the type of USB charger emulated
by the USB-A port.

Adjust the docs and the power_supply_sysfs.c code to adjust for this
new writeable use of "usb_type":

1. Update Documentation/ABI/testing/sysfs-class-power to document that
"usb_type" may be writable

2. Change the power_supply_attr type in power_supply_sysfs.c from
POWER_SUPPLY_ATTR() into POWER_SUPPLY_ENUM_ATTR() so that the various
usb_type string values from POWER_SUPPLY_TYPE_TEXT[] such as e.g.
"SDP" and "USB_PD" can be written to the "usb_type" attribute instead
of only accepting integer values.

Cc: Enric Balletbo Serra <enric.balletbo@collabora.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 Documentation/ABI/testing/sysfs-class-power | 7 ++++++-
 drivers/power/supply/power_supply_sysfs.c   | 2 +-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-class-power b/Documentation/ABI/testing/sysfs-class-power
index 84973f66b42c..45180b62d426 100644
--- a/Documentation/ABI/testing/sysfs-class-power
+++ b/Documentation/ABI/testing/sysfs-class-power
@@ -608,7 +608,12 @@ Description:
 		the supply, for example it can show if USB-PD capable source
 		is attached.
 
-		Access: Read-Only
+		Access: For power-supplies which consume USB power such
+		as battery charger chips, this indicates the type of
+		the connected USB power source and is Read-Only.
+
+		For power-supplies which act as a USB power-source such as
+		e.g. the UCS1002 USB Port Power Controller this is writable.
 
 		Valid values:
 			      "Unknown", "SDP", "DCP", "CDP", "ACA", "C", "PD",
diff --git a/drivers/power/supply/power_supply_sysfs.c b/drivers/power/supply/power_supply_sysfs.c
index 3e63d165b2f7..ff7e423edd57 100644
--- a/drivers/power/supply/power_supply_sysfs.c
+++ b/drivers/power/supply/power_supply_sysfs.c
@@ -209,7 +209,7 @@ static struct power_supply_attr power_supply_attrs[] = {
 	POWER_SUPPLY_ATTR(TIME_TO_FULL_NOW),
 	POWER_SUPPLY_ATTR(TIME_TO_FULL_AVG),
 	POWER_SUPPLY_ENUM_ATTR(TYPE),
-	POWER_SUPPLY_ATTR(USB_TYPE),
+	POWER_SUPPLY_ENUM_ATTR(USB_TYPE),
 	POWER_SUPPLY_ENUM_ATTR(SCOPE),
 	POWER_SUPPLY_ATTR(PRECHARGE_CURRENT),
 	POWER_SUPPLY_ATTR(CHARGE_TERM_CURRENT),
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
